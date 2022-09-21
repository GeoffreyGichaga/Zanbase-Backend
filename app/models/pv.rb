class Pv < ApplicationRecord
    belongs_to :user
    has_one :user_detail, through: :users
end
