class User < ApplicationRecord
    # Don't manually define `password_digest`
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    # ...
    has_secure_password
    has_many :products, dependent: :destroy
end
  