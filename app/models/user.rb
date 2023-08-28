class User < ApplicationRecord
    # Don't manually define `password_digest`
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    # ...
end
  