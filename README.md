# README
Basic setup to run UI end-to-end tests using capybara and rspec. 

Run
bundle install

Run tests
bundle exec rspec --color --format documentation


Setting 'js: true' will run the test in real Chrome browser, test will run in Headless Chrome if 'js: true' is not set. 

RSpec.describe "Hello Capybara" do 
	
  it "Should see Hello Capybara text on the page in Chrome browser", type: :system, js: true do
    visit root_path
    expect(page).to have_text("Hello Capybara!")
  end

  it "Should see Hello Capybara text on the page in Headless Chrome", type: :system do
    visit root_path
    expect(page).to have_text("Hello Capybara!")
  end

