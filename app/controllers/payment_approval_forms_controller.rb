class PaymentApprovalFormsController < ApplicationController

    def create
        new_payment_approval_form = PaymentApprovalForm.create!(payment_approval_form)
        render json: new_payment_approval_form, status: :created

    end 










    private 

    def payment_approval_form
        # 1. Date - Date of generating pv 
        current_date = Time.new
        # pv_date = "#{current_date.day}/#{current_date.month}/#{current_date.year} "



        # 2. Org - The organisation the user belongs to 
        user_organisation = @current_user.org
        

        # 3. Program - Progams 
        if(user_organisation == "ZAP")
            program = "ZanaAfrica Programs"
        else
            program = "ZanaAfrica Group"
        end

        

        # 4. Function - Role of the current user 
        # Separate role from Job title 
        function = @current_user.role




        # Employee details 
        #  5. Name
        name = "#{@current_user.firstname} - #{@current_user.lastname}"

        # 6. ID Number -employee national id number
        employee_id = @current_user.user_detail.id_number

        # 7. Start Date of the Week 
        start_day_of_the_week = "#{@current_user.attendance.first.date}"
        
        # 8. End Date of the Week
        end_date_of_the_week  = "#{@current_user.attendance.last.date}"

        # 9. Number of days Worked
        number_of_days_worked = @current_user.attendance.count

        # 10.Amount Payable
        # This Varies depending on the type of contract/ salary terms with the HR
        # Payment calculation below are for interns only
        amount_payable = @current_user.attendance.count * 500



        # Payment Details 
        # 11. Name on Account
        name_on_account = @current_user.user_detail.name_on_account

        # 12. Bank 
        bank = @current_user.user_detail.bank_name

        # 13. Account Number 
        account = @current_user.user_detail.account_number

        # 14. Bank Code 
        bank_code = @current_user.user_detail.bank_code

        # 15. Branch code 
        branch_code = @current_user.user_detail.branch_code

        # 16. Telephone Number
        telephone = @current_user.user_detail.telephone_number

        # Authorization Section 
        # 17. Prepared by (the Intern/Consultant/Employee)
            # Name 
            prepared_by = "#{@current_user.firstname} #{@current_user.lastname}"

            # Signature
            user_signature = "#{@current_user.firstname[0]}.#{@current_user.lastname[0]}"
            # Date (Date of submitting the PV)
            prepared_on_date = "#{current_date.day}/#{current_date.month}/#{current_date.year}"


            # Daily Stipend
            # daily_stipend = "500"



        # To be sent as NUll 
        # prepared_by = "#{@current_user.firstname} #{@current_user.lastname}"
        # approved_by = @current_user.supervisor
        # authorized_by = "Roopal Thaker"

       

        approval_form_info = {
            # Top General Info 
            # :date => date
            :org => user_organisation,
            :program => program,
            :function => function,

            # Employee / Intern Details
            :name => name,
            :employee_id => employee_id,
            :start_day_of_the_week => start_day_of_the_week,
            # :daily_stipend => daily_stipend,
            :end_date_of_the_week => end_date_of_the_week,
            :number_of_days_worked => number_of_days_worked,
            :amount_payable => amount_payable,


            # Payment Details
            :name_on_account => name_on_account,
            :bank => bank,
            :account => account,
            :bank_code => bank_code,
            :branch_code => branch_code,
            :telephone => telephone,

            # Approval section 
            # :prepared_by => name,
            :user_signature_sign => user_signature,
            # :prepared_on_date => submission_date,

            # Supervisor
            :approved_by_name => "Not Approved",
            :approved_by_signature => "Not Approved",
            :approved_by_date => "Not Approved",

            # Authorizor 

            :authorized_by_name => "Not Approved",
            :authorized_by_sign => "Not Approved",
            :authorized_by_date => "Not Approved"




        }
    

        
        return approval_form_info
    end
end
