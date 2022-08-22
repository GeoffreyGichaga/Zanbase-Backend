class User < ApplicationRecord
    has_secure_password
    has_one :user_detail
    
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :role, presence: true
    validates :supervisor, presence: true
    validates :password_digest, presence: true, length: {minimum:4, maximum:70}

end

