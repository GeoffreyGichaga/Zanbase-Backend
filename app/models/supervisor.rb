class Supervisor < ApplicationRecord
    has_many :users
    belongs_to :department


    validates :name, presence: true
    validates :role, presence: true
    validates :department, presence: true

end
