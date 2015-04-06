class User < ActiveRecord::Base
  has_many :workouts

  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_format_of :username , with: /\A[a-z][a-z0-9_]*[a-z0-9]\z/, message: "must contain only lowercase letters, numbers, and underscores"
  validates :password, presence: true, confirmation: true, length: {minimum: 5}, on: :create
end