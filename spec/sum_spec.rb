require_relative "../sum"

RSpec.describe '#sum' do
  it "returns 0 for an empty string" do
    expect(sum("")).to eq(0)
  end

  it "returns the entered number for a string with single number" do
    expect(sum("5")).to eq(5)
  end

  it "returns the sum of two numbers" do
    expect(sum("5,7")).to eq(12)  
  end

  it "returns the sum of all the numbers" do
    expect(sum("1,2,3,4,5")).to eq(15)
  end
end
