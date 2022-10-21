class User < ApplicationRecord
    # Bcrypt - password encryption
    has_secure_password

    # Users Associations
    has_one :user_detail
    has_many :attendance
    # belongs_to :supervisor
    belongs_to :department
    has_many :tasks

    # Pv 
    has_many :pvs
    has_many :payment_request_forms, through: :pvs
    has_many :payment_approval_forms, through: :pvs

    

    # Info Validations 
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :role, presence: true
    validates :supervisor, presence: true
    validates :password_digest, presence: true, length: {minimum:4, maximum:70}





    # Class Methods 




    # def self.full_name
    #     "#{}"
    # end
end



