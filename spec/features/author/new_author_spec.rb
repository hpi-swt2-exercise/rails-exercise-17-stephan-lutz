require 'rails_helper'

def authorsMatching(author)
  return Author.find_each(first_name: author.first_name, last_name: author.last_name, homepage: author.homepage)
end

describe "New author page", type: :feature do

  it "should render withour error" do
    visit new_author_path
  end

  it "should have text input for first name, last name, and homepage" do
    visit new_author_path
  
    expect(page).to have_field('First name')
    expect(page).to have_field('Last name')
    expect(page).to have_field('Homepage')
  end

  it "should save an author" do
    visit new_author_path

    author = build(:author)

    expect(authorsMatching(author).size).to be 0
    fill_in "author_first_name", :with => author.first_name
    fill_in "author_last_name", :with => author.last_name
    fill_in "author_homepage", :with => author.homepage
    find('input[type="submit"]').click

    expect(authorsMatching(author).size).to be 1
  end

  it "should show validation errors" do
    visit new_author_path

    fill_in "author_first_name", :with => "Alan"
    fill_in "author_last_name", :with => ""
    fill_in "author_homepage", :with => "http://wikipedia.de/Alan_Turing"
    find('input[type="submit"]').click

    expect(page).to have_content("Last name can't be blank")
  end
end
