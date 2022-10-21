class PaymentApprovalFormSerializer < ActiveModel::Serializer
  attributes :id, :prep_date, :org, :program, :function, :name, :employee_id, :start_day_of_the_week, :end_date_of_the_week, :number_of_days_worked, :amount_payable, :name_on_account, :bank, :account, :bank_code, :branch_code, :telephone, :prepared_by_name, :user_signature_sign, :prepared_by_date, :approved_by_name, :approved_by_signature, :approved_by_date, :authorized_by_name, :authorized_by_sign, :authorized_by_date
end
