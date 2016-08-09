class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :content, :user_id, :product_id, presence: true

end
