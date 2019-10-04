class User < ApplicationRecord
  include Clearance::User
  has_many :promises

  validates :mobile, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
