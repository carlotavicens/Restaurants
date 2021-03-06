class Restaurant < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates :user, presence: true
  validates :address, presence: true
  validates :telephone, presence: true
end
