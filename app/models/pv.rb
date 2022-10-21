class Pv < ApplicationRecord
    belongs_to :user
    has_one :user_detail, through: :users
    has_one :payment_approval_form
    has_one :payment_request_form
end
