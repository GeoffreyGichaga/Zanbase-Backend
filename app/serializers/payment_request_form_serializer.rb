class PaymentRequestFormSerializer < ActiveModel::Serializer
  attributes :id, :generated_by, :budget_holder, :payee, :paid_by, :telephone, :account, :bank, :description, :cost, :budget_code, :checked_by, :checked_by_date, :approved_by_budget_holder_1, :approved_by_budget_holder_1_date, :approved_by_budget_holder_2, :approved_by_budget_holder_2_date
end
