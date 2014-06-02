require_relative "car"
require "rspec"

describe OrangeTree do
  let(:orange_tree) { OrangeTree.new(6) }

  context "#initialize" do
    it "creates an OrangeTree object" do
      expect(orange_tree).to be_an_instance_of OrangeTree
    end
  end

  context "#age!" do
    it "should age the tree" do
      expect(orange_tree.age!).to eq 7
    end
  end

  context "#grow_oranges" do
    it "should return number of oranges" do
      expect( orange_tree.grow_oranges ).to eq 5
    end
  end

  context "#any_oranges?" do
    it "should return true" do
      expect(orange_tree.any_oranges?).to eq false
    end
  end

    it "it should return dead " do
      expect(orange_tree.dead?).to eq false
    end

end
