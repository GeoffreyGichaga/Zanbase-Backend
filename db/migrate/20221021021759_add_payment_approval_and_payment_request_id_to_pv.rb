class AddPaymentApprovalAndPaymentRequestIdToPv < ActiveRecord::Migration[6.1]
  def change
    add_column :pvs, :payment_approval_form_id, :integer
    add_column :pvs, :payment_request_form_id, :integer

    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
