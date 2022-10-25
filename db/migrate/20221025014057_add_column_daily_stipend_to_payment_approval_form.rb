class AddColumnDailyStipendToPaymentApprovalForm < ActiveRecord::Migration[6.1]
  def change
    add_column :payment_approval_forms, :daily_stipend, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
