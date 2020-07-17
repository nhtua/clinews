
describe "Play with RSpec: Calculator" do

  it "Should sum the array propperly" do
    input     = [1,3,5,7]
    output    = 0
    expected  = 16
    input.each { |n| output += n }
    expect(output).to eq expected
  end

end
