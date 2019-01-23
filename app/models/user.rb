class User < ApplicationRecord
    has_many :restaurant
    has_many :comment

    validates :email, presence: true
    validates :password, presence: true
    validates :username, presence: true
    #validates_inclusion_of :admin, :in =>%w(true false)
end
