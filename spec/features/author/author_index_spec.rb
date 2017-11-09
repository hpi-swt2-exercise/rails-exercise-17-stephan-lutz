require 'rails_helper'

describe "Author index page", type: :feature do
  
  it "should render without error" do
    visit authors_path
  end
  
end
