class Vote < ActiveRecord::Base

  validates_presence_of :post_id, :user_id
  validates_uniqueness_of :user_id, scope: :post_id

  belongs_to :post
  belongs_to :user

end
