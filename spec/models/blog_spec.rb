require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'is not valid without a title' do
    my_blog = Blog.create title: nil, content: 'blog blog blog blog blog'
    expect(my_blog.errors[:title]).to_not be_empty
  end
  it 'is not valid without content' do
    my_blog = Blog.create title: 'This is my blog', content: nil
    expect(my_blog.errors[:content]).to_not be_empty
  end
  it 'has 10 or more characters in the title' do
    my_blog = Blog.create title:'123456789', content: 'blog blog blog blog blog'
    expect(my_blog.errors[:title]).to_not be_empty
  end
  it 'has unique titles' do
    Blog.create title:'THIS HAS AT LEAST TEN', content: 'blog blog blog blog blog'
    my_blog = Blog.create title:'THIS HAS AT LEAST TEN', content: 'blog blog blog blog blog'
    expect(my_blog.errors[:title]).to_not be_empty
  end
end
