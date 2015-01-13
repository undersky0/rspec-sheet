class Product
  attr_reader :price
end

class PriceCalculator
  def add product
    products << product
  end
  
  def products
    @products ||= []
  end
  
  def final_price
    @products.map(&:price).inject(&:+)
  end
    
end  

describe "Stubs" do
  let(:calculator) {PriceCalculator.new}
  it "provides stubs to simulate state" do
    first_product = double("Product")
    print first_product #[RSpec::Mocks::Double:0x826cf0d4 @name="Product"].
    allow(first_product).to receive(:price).and_return(1.0)
    #calculator.add instance_double("Product", price: 1.0)
    calculator.add first_product
    calculator.add instance_double("Product", price: 100.25)
    print calculator.final_price #[RSpec::Mocks::Double:0x824e9d14 @name="Product"]101.25.
    expect(calculator.final_price).to eq 101.25  
  end
  it "provides mocks to asset on message passing" do
    expect_any_instance_of(Product).to receive(:price) {5}
    product = Product.new
    product.price
    # product_mock = double(:product)
    # expect(product_mock).to receive(:price).with(any_args)
    # calculator.add product_mock
    # calculator.final_price
  end
end
