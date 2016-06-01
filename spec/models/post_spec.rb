require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { Post.new(content: "Some text", user_id: 1) }
  it 'is valid' do
    expect(post).to be_valid
  end
  it 'is invalid without a content' do
    post.content = nil
    expect(post).to_not be_valid
  end
  it 'must have a reference to a user' do
    post.user_id = nil
    expect(post).not_to be_valid
  end
  it 'is associated with a user' do
    expect(post).to respond_to(:user)
  end
end
