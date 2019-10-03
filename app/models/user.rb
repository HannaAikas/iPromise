class User < ApplicationRecord
  include Clearance::User
  has_many :promises

  include Clearance::User
  validates :mobile, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
