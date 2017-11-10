require 'rails_helper'

describe "Edit author page", type: :feature do

  before :each do
    @author = create(:author)
  end

  it "should render withour error" do
    visit edit_author_path(@author)
  end

  it "should save changes" do
    visit edit_author_path(@author)

    fill_in "author_first_name", :with => "Alan"
    fill_in "author_last_name", :with => "Mathison"
    fill_in "author_homepage", :with => "http://wikipedia.de/Alan_Turing"
    find('input[type="submit"]').click
  end
end
