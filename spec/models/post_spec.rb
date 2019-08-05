# frozen_string_literal: true

require "rails_helper"

RSpec.describe Post, type: :model do
  it "is valid" do
    expect(build(:post)).to be_valid
  end

  it "is invalid without a title" do
    expect(build(:post, title: nil)).to be_invalid
  end

  it "is invalid with too short content" do
    expect(build(:post, content: "This is the content.")).to be_invalid
  end

  it "is invalid with a long summary" do
    expect(build(:post, summary: "This is the summary. I'm hoping it is not too long, but then again I think it may be since the character count is 250 characters, but you know me - I’m really bad about being able to consolidate my thoughts into something as short as that summary length but here goes nothing!
")).to be_invalid
  end

  it "is invalid with a category outside the choices" do
    expect(build(:post, category: "Op-Ed")).to be_invalid
  end

  it "is invalid if not clickbait" do
    expect(build(:post, title: "My Post") ).to be_invalid
  end

  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end
end
