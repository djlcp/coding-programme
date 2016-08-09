class Product < ActiveRecord::Base

  validates :title, presence: true

  belongs_to :user
  has_many :comments
  has_many :votes

end
