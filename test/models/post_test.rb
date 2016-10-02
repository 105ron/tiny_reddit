require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(content: "a" * 1700, title: "b" * 15)

  end

  test "should be valid" do
    assert @post.valid?
  end

  test "content should be present" do
    @post.content = "     "
    assert_not @post.valid?
  end


  test "post should not be too long" do
    @post.content = "a" * 2025
    assert_not @post.valid?
  end

  test "post should not be too short" do
    @post.content = "a" * 10
    assert_not @post.valid?
	end

	  test "title should not be too long" do
    @post.title = "a" * 101
    assert_not @post.valid?
  end

  test "title should not be too short" do
    @post.title = "a" * 3
    assert_not @post.valid?
  end

end
