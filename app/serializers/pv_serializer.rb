class PvSerializer < ActiveModel::Serializer
  attributes :id, :employee_details, :payment_details, :prepared_by, :approved_by, :authorized_by
end
