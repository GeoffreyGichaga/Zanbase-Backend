class CreatePaymentApprovalForms < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_approval_forms do |t|
      t.string :prep_date
      t.string :org
      t.string :program
      t.string :function
      t.string :name
      t.string :employee_id
      t.string :start_day_of_the_week
      t.string :end_date_of_the_week
      t.string :number_of_days_worked
      t.string :amount_payable
      t.string :name_on_account
      t.string :bank
      t.string :account
      t.string :bank_code
      t.string :branch_code
      t.string :telephone
      t.string :prepared_by_name
      t.string :user_signature_sign
      t.string :prepared_by_date
      t.string :approved_by_name
      t.string :approved_by_signature
      t.string :approved_by_date
      t.string :authorized_by_name
      t.string :authorized_by_sign
      t.string :authorized_by_date

      t.timestamps
    end
  end
end
