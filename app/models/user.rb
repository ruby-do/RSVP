class User < ActiveRecord::Base
  has_secure_password

  has_many :registrations
  has_many :events, through: :registrations
end
