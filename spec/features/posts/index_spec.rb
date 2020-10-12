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

  it "signed in user can access new post form" do
    visit posts_path

    click_on "New Post"

    expect(current_path).to eq(posts_new_path)
  end

  it "signed in user post a new post with form" do
    user = User.create!(email: 'test@example.com', password: 'pwassword')
    login_as(user, :scope => :user)
    visit posts_new_path

    fill_in "Body", with: "Blah blah blah"
    fill_in "Title", with: "This is my new post"

    click_on "Create Post"

    count = Post.count
    expect(current_path).to eq(posts_path)
    expect(count).to eq(13)
  end

  # Given the time this would have been much more robust
end