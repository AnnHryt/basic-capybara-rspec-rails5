require 'rails_helper'

RSpec.describe "Hello Capybara" do 
	
  it "Should see Hello Capybara text on the page", type: :system, js: true do
    visit root_path
    expect(page).to have_text("Hello Capybara!")
  end
end
