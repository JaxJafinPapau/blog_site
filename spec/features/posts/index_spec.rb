require 'rails_helper'

RSpec.describe "On posts index", type: :feature do
  before(:each) do
    create_list(:post, 12)
  end
  after(:each) do
    Post.all.each{|a| a.remove}
    User.all.each{|u| u.remove}
  end
  it "user sees 10 most recent posts" do
    visit posts_path
    
    expect(page).to have_css(".post-title", count: 10)
  end

  it "user does not see more than 10 posts" do
    visit posts_path
    
    expect(page).to_not have_css(".post-title", count: 12)
  end
end