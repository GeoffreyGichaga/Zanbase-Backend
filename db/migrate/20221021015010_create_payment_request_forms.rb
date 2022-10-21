class CreatePaymentRequestForms < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_request_forms do |t|
      t.string :generated_by
      t.string :budget_holder
      t.string :payee
      t.string :paid_by
      t.string :telephone
      t.string :account
      t.string :bank
      t.string :description
      t.string :cost
      t.string :budget_code
      t.string :checked_by
      t.string :checked_by_date
      t.string :approved_by_budget_holder_1
      t.string :approved_by_budget_holder_1_date
      t.string :approved_by_budget_holder_2
      t.string :approved_by_budget_holder_2_date

      t.timestamps
    end
  end
end
