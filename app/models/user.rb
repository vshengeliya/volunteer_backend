class User < ApplicationRecord
    has_many :attendances
    has_many :events
    has_many :comments
    has_many :my_attendances, through: :attendances, source: :event
    has_many :my_comments, through: :comments, source: :event

    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }

    # attr_accessor :password
 
    # def authenticate(plaintext_password)
    #   if BCrypt::Password.new(self.password_digest) == plaintext_password
    #     self
    #   else
    #     false
    #   end
    # end
end
