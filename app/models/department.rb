class Department < ApplicationRecord
    # has_many :users
    # has_many :supervisors

    validates :name, presence: true, uniqueness: true
    validates :organisation, presence: true, uniqueness: true
end
