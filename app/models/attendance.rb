class Attendance < ApplicationRecord
    belongs_to :user

    validates :date, presence: true
    validates :timeIn, presence: true
    validates :timeOut, presnece: true
    validates :activities, presence: true
    validates :sign, presence: true
    validates :checkedBy, presence: true    
end


