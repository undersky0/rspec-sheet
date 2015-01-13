describe "Matchers" do
  it "asserts on equality" do
    number = 3
    expect(number).to eq 3
  end
  it "asserts on mathematical operators" do
    number = 3 
    expect(number).to(be >= 2)
    expect(number).to be > 2
  end
  it "asserts on matching a regular expression" do
    email = "test@test.com"
    regular_expression = /^\w+@\w+\.[a-z]{2,4}$/
    expect(email).to match regular_expression
  end
  it "asserts on types and classes" do
    object = 1.1
    expect(object).to be_a(Float)
    expect(object).to be_a Numeric
  end
  it "asserts on truthiness" do
    bool = true
    nil_value = nil
    expect(nil_value).to be nil
    expect(nil_value).to be_falsey
    expect(bool).to be true
  end
  it "expects errrors" do
    expect do
     #raise ArgumentError
      raise TypeError
    end.to raise_error TypeError
  end
  it "expects throws" do
    expect {
      throw :oops
    }.to throw_symbol :oops
  end
  it "asserts on predicates" do
    class A
      def good?
        A
      end
    end
    expect(A.new).to be_good
  end
  it "asserts on collections" do
    list = [
      :one,
      :two,
      :three
    ]
    expect(list).to include :two
    #expect(list).to start_with(:two)
    expect(list).to start_with(:one, :two)
    expect(list).to end_with(:two ,:three)
    
  end
  it "negates asserts" do 

    expect(3).not_to be 4
  end
  
  xit "test skipping", :skip => "skipper" do
    #pending
    #skip
  end
  
  fit "focusing on test", :focus => "focused test-" do
    
  end
end
