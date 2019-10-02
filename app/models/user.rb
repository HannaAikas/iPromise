class User < ApplicationRecord
  include Clearance::User
  has_many :promises

  validates :mobileNumber, presence: true, uniqueness: true

end
