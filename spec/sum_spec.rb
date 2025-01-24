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

  it "returns the sum even if \n is used instead of comma" do
    expect(sum("1\n2\n3")).to eq(6)  
  end

  it "returns the sum even if \n is used with of comma" do
    expect(sum("45,2\n3,50")).to eq(100)  
  end

  it "returns the sum if string has a delimitter" do
    expect(sum("//;5;2,2\n3,5")).to eq(17)  
  end
end
