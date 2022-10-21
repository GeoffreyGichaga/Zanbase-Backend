class AddUserIdToPaymentApprovalForm < ActiveRecord::Migration[6.1]
  def change
    add_column :payment_approval_forms, :user_id, :integer
    add_column :payment_request_forms, :user_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
