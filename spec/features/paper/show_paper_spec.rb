require 'rails_helper'

describe "Paper page", type: :feature do

  before :each do
    @paper = create(:paper)
  end

  it "should list the authors" do
    visit paper_path(@paper)

    expect(page).to have_content("Alan Turing")
  end

end
