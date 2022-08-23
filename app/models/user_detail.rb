class UserDetail < ApplicationRecord
    belongs_to :user


    validates :name_on_account, presence: true
    validates :bank_name, presence: true 
    validates :account_number, presence: true
    validates :bank_code, presence: true
    validates :branch_code, presence: true
    validates :telephone_number, presence: true, length: {minimum: 10, maximum:10}
end



