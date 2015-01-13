describe "Composable Matchers" do
  it "works with nested data" do

    class Product
      def initialize id,name,category
        @id = id
        @name = name
        @category = category
      end
      def serial_data
        [
          "X-",
          @name,
          @category,
          @id
        ]
      end
    end
    product = Product.new 234, "name", "category"
    #Matchers
    #-----------------
    #expect(product.serial_data).to match [
    #expect(product.serial_data).to contain_exactly [
    #expect(product.serial_data).to include(a_string||a_value||a_hash)
    #expect(product.serial_data).to yield_wtih_args(a_string_with, a_hash) 
    expect(product.serial_data).to match [
      a_string_starting_with("X-"),
      a_string_starting_with("n"),
      a_string_starting_with("c"),
      a_value < 5000
    ]
    #arguments
    #a_string
    #a_hash, #a_hash_including
    #a_value, a_value_within(1).of(3.3)
    #an_instance_of(Hash)
    
  end

  it "compound matchers" do
    string = "test"
    expect(string).to start_with("t").and end_with("t")
  end
end