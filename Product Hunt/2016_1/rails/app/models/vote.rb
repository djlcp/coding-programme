class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :user_id, :product_id, presence: true

  validates :user_id, uniqueness: { scope: :product_id, message: 'can only upvote a product once' }

end
