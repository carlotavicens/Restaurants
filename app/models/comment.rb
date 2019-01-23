class Comment < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :text, presence: true
  validates :score, presence: true
  validates :user, presence: true
end
