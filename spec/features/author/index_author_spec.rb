require 'rails_helper'

describe "Author index page", type: :feature do
  
  it "should render without error" do
    visit authors_path
  end

  it "should display first and last name in one column" do
    visit authors_path
    page.find(:xpath, ".//th[text()='Name']")
  end
  
end
