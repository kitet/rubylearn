require 'game'
describe StringCalculator do
	describe ".add" do
		context "given a empty string" do
			it "returns zero" do
				expect(StringCalculator.add("")).to eql(0)
			end
		end
		context "given '4, 2'" do
			it "returns 6" do
				expect(StringCalculator.add('4,2')).to eql(6)
			end
		end
	end
end