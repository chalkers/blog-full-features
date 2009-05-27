module CommentsHelper
  def number_of_comments(comments)
    if comments.size == 1
      "1 comment"   
    elsif comments.size > 0
      "#{comments.size} comments"
    else
      "No comments"
    end
  end
end
