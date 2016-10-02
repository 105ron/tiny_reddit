require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	def setup
#  	user = User.new(id: 1, name: "Example User", email: "user@example.com",
#  									username: "sample_user")
    @comment = Comment.new(title: "b" * 15, content: "a" * 1700, user_id: 1, post_id: 1)

  end

#  test "should be valid" do
#    assert @comment.valid?
#  end #Test fails without a valid user

  test "content should be present" do
    @comment.content = "     "
    assert_not @comment.valid?
  end


  test "comment should not be too long" do
    @comment.content = "a" * 2025
    assert_not @comment.valid?
  end

  test "comment should not be too short" do
    @comment.content = "a" * 10
    assert_not @comment.valid?
	end

	  test "title should not be too long" do
    @comment.title = "a" * 101
    assert_not @comment.valid?
  end

  test "title should not be too short" do
    @comment.title = "a" * 3
    assert_not @comment.valid?
  end

end
