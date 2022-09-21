class UserDetail < ApplicationRecord
    belongs_to :user
    has_many :pvs ,through: :user


    validates :name_on_account, uniqueness: true, presence: true
    validates :bank_name, presence: true 
    validates :account_number, uniqueness: true, presence: true
    validates :bank_code, presence: true
    validates :branch_code, presence: true
    validates :telephone_number, uniqueness: true, presence: true
    validates :id_number, uniqueness: true, presence: true
end


