class Post < ActiveRecord::Base
  attr_accessible :content, :title

  has_many :comments

  def has_comments?
    comments.count > 0
  end

  def latest_comment(id)
  	post = Post.find(id)
  	comment = post.comments.last
  end
end
