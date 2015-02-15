require_relative 'spec_helper'
require_relative '../lib/pull_request'

describe PullRequest do
  it "should have a title" do
    @pr = PullRequest.new
    expect(@pr.title).to_not eq(nil)
  end
  it "should be of wnndnn format" do
    @pr = PullRequest.new
    expect(@pr.valid_title?).to eq(true)
  end
  it "have errors for incorrect names" do
    @pr = PullRequest.new
    @pr.title = "W02 d03"
    expect(@pr.errors?).to_not eq(nil)
  end
  it "have errors for incorrect names" do
    @pr = PullRequest.new
    @pr.title = "w02D03"
    expect(@pr.errors?).to_not eq(nil)
  end
end