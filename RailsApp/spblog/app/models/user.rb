class User < ApplicationRecord
	has_many :articles
	validates :email, presence: true
	validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :first_name, presence: true, length: { minimum: 1 }
	validates :last_name, presence: true, length: { minimum: 1 }
	validates :birthdate, presence: true
	validates :password, presence: true, length: { minimum: 8 }
end
