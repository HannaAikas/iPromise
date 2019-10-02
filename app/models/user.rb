class User < ApplicationRecord
  include Clearance::User

  include Clearance::User
  validates :mobile, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
