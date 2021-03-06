require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not validate without title" do
    paper = build(:paper, :title => nil)
    expect(paper).not_to be_valid
  end

  it "should not validate without venue" do
    paper = build(:paper, :venue => nil)
    expect(paper).not_to be_valid
  end

  it "should not validate without year" do
    paper = build(:paper, :year => nil)
    expect(paper).not_to be_valid
  end

  it "should not validate with non-integer year" do
    paper = build(:paper, :year => "nineteen-fifty")
    expect(paper).not_to be_valid
  end

  it "should have and belong to many authors" do
    paper = build(:paper)
    expect(paper.authors).not_to be_empty
  end
end
