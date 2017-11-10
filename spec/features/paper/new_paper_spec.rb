require 'rails_helper'

describe "New paper page", type: :feature do

  it "should render withour error" do
    visit new_paper_path
  end

  it "should have text input for title, venue and year" do
    visit new_paper_path
  
    expect(page).to have_field('Title')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
  end

  it "should allow to select 5 authors from 5 seperate drop downs" do
    visit new_paper_path

    expect(page).to have_field('Author 1')
    expect(page).to have_field('Author 2')
    expect(page).to have_field('Author 3')
    expect(page).to have_field('Author 4')
    expect(page).to have_field('Author 5')
  end
end
