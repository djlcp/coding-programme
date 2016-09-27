class Comment < ApplicationRecord

  validates :content, presence: true

  belongs_to :commentable, polymorphic: true

end
