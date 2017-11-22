class User < ApplicationRecord
  validates :login, presence: true, uniqueness: true, length: { in: 3..50 }
  validates :password, presence: true, length: {minimum: 7}
  has_secure_password
end
