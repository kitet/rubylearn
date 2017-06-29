require 'game'
require './app'

Capybara.app=Sinatra::Application
set(:show_exceptions, false)

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

describe('the title case path', {:type => :feature}) do
    it('processes the user entry and returns it title cased') do
      visit('/')
      fill_in('title', :with => 'green eggs and ham')
      click_button('Send')
      expect(page).to have_content('Green Eggs and Ham')
    end
end