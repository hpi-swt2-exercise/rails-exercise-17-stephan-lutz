require 'rails_helper'

describe "Author index page", type: :feature do
  
  it "should render without error" do
    visit authors_path
  end

  it "should display first and last name in one column" do
    visit authors_path
    expect(page).to have_css("th", text: "Name", exact: true)
  end

  it "should link to the new author page" do
    visit authors_path
    click_link 'Add author'
    expect(page).to have_current_path(new_author_path)
  end

  it "should link to author page" do
    author = create(:author)
    visit authors_path
    click_link 'Show'
    expect(page).to have_current_path(author_path(author))
  end

  it "should link to edit author page" do
    author = create(:author)
    visit authors_path
    click_link 'Edit'
    expect(page).to have_current_path(edit_author_path(author))
  end
end
