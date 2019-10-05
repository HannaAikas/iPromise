class User < ApplicationRecord
  include Clearance::User
  has_many :promises

<<<<<<< HEAD
  validates :mobile, presence: true, uniqueness: true
=======
  validates :mobile, presence: true, uniqueness: false
>>>>>>> b906689df1656d312700e2055073f801624d4f01
  validates :email, presence: true, uniqueness: true
end
