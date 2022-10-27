require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe "Dessert" do
  let(:chef) { double("chef") }
    
  describe "#initialize" do
    subject(:icecream) {Dessert.new("icecream", 50,"chef")}

    it "sets a type" do
      expect(icecream.type).to eq("icecream")
    end

    it "sets a quantity" do
      expect(icecream.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(icecream.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ icecream.ingredients("0")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    subject(:icecream) {Dessert.new("icecream", 50,"chef")}

    it "adds an ingredient to the ingredients array" do 

      expect(icecream.add_ingredient("milk")).to eq(["milk"])
    end
  end

  # describe "#mix!" do
  #   it "shuffles the ingredient array"
  #   # icecream.ingredients = ["milk", "sugar", "cookies"]
  #   expect(icecream.mix!).to_not eq(["milk", "sugar", "cookies"])
  # end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
    end

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
