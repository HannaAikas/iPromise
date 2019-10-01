class User < ApplicationRecord
  include Clearance::User

  include Clearance::User
  
  validates :mobileNumber, presence: true, uniqueness: true

end
