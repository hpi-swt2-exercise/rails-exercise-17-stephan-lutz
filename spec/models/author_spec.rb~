require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have a first name, last name and a homepage" do
    author = FactoryGirl.create(:author)
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
  end

  it "should know its full name" do
    author = FactoryGirl.create(:author)
    expect(author.name).to eq("Alan Turing")
  end

end
