require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not validate without title" do
    paper = build(:paper, :title => nil)
    expect(paper).not_to be_valid
  end

  it "should not validate without venue" do
    paper = build(:paper, :year => nil)
    expect(paper).not_to be_valid
  end
end
