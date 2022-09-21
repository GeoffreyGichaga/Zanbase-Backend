class Pv < ApplicationRecord
    belongs_to :user
    belongs_to :user_detail, through: :user
end
