class Promise < ApplicationRecord
  belongs_to :user, optional: true
end
