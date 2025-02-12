class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :parent_comment, class_name: 'Comment', optional: true
  has_many :replies, class_name: 'Comment', foreign_key: 'parent_comment_id', dependent: :destroy

  validates :content, presence: true

  def nested_comments(level = 1)
    return [] if level > 4

    replies.map do |reply|
      {
        comment: reply,
        replies: reply.nested_comments(level + 1)
      }
    end
  end
end
