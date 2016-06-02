require "rails_helper"

describe Transcription do

  it "has a title" do
    transcript = Transcription.new(:title => "United States Constitution")
    expect(transcript.title).to eq("United States Constitution")
  end

  it "has a description" do
      transcript = Transcription.new(:description => "United States Constitution")
      expect(transcript.description).to eq("United States Constitution")
  end

  context "with 2 or more comments" do
    it "orders them in chronological order" do
      transcript = Transcription.create!
      comment1 = transcript.comments.create!(:user_name => "foo", :body => "first comment")
      comment2 = transcript.comments.create!(:user_name => "foo", :body => "second comment")

      expect(transcript.reload.comments).to eq([comment1, comment2])
    end
  end
end