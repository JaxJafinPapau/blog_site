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

    expect(page).to have_content("Post 1")
    expect(page).to have_content("Post 10")
  end
end