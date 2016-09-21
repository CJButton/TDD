require 'tdd'
require 'rspec'

describe Array do

  describe "#my_uniq" do
    let(:an_array) { [1,2,1,3,3] }

    it "should not modify the original array" do
      an_array.my_uniq
      expect(an_array).to eq([1,2,1,3,3])
    end

    it "should return only unique elements" do
      expect(an_array.my_uniq).to eq(an_array.uniq)
    end

    it "should not call #uniq" do
      expect(an_array.my_uniq).to_not receive(:uniq)
    end
  end
end
