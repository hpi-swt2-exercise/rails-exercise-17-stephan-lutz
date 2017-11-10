require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not validate without title" do
    paper = create(:paper, :title => nil)
    expect(paper).to not_be(valid)
  end
end
