class PaymentRequestFormsController < ApplicationController

    def create
    end










    private

    def payment_request_form

        # 1. Generated by
        generated_by = "#{@current_user.firstname} #{@current_user.lastname}"


        # 2. Budget Holder
        if(@current_user.department.organisation == "ZAP")
            budget_holder = "Roopal Thaker"
        else
            budget_holder =  "Megan Mukuria"
        end 



        # 3. Paid by
        if(@current_user.org == "ZanaAfrica Programs")
            paid_by = "ZAP"
        else
            paid_by = "ZAG"
        end 

        # 4. Payee
        payee = generated_by

        #  5/ Telephone
        telephone = @current_user.user_detail.telephone_number

        # 6. Account Number
        account = @current_user.user_detail.account_number

        # 7. Bank
        bank = @current_user.user_detail.bank_name

        # 8. Description 
            # Role 
            user_role = @current_user.role

            # Type of payment(Stipend/Salary)
            if(@current_user.role == "Intern")
                type_of_payment = "Stipend"
            elsif(@current_user.role == "Employee")
                type_of_payment = "Salary"
            else
                type_of_payment = "Compensation"
            end

            # Name of the user 
            user_name = generated_by

            # The Working Period 
            start_date = @current_user.attendance.first.date
            end_date = @current_user.attendance.first.date


            #Complete description  
        description = "#{user_role} #{type_of_payment} for #{user_name} from #{start_date} - #{end_date}"



        # 9. Cost - Amount to be Paid 
        cost = @current_user.attendance.count * 500

        # 10.Budget Code
        if(@current_user.role = "Intern")
            budget_code = 8410
        else
            budget_code = 8100
        end 



        

        # All payment Request Form Information 

        payment_request_info = {
            # User's Information on the Payment Request form 
            :generated_by => generated_by,
            :budget_holder => budget_holder,
            :payee => payee,
            :paid_by => paid_by,
            :telephone => telephone,
            :account => account,
            :bank => bank ,
            :description => description,
            :cost => cost,
            :budget_code => budget_code,

            # Authorization Section 

            # Checked by & It's date  
            :checked_by => "Not Checked",
            :checked_by_date => "Not Checked",

            # Approved by 1 & It's date 
            :approved_by_budegt_holder_1 => "Not Approved",
            :approved_by_budegt_holder_1_date => "Not Approved",

            # Approved by 1 & It's date
            :approved_by_budegt_holder_2 => "Not Approved",
            :approved_by_budegt_holder_2_date => "Not Approved"

        }

        render json: payment_request_info, status: :ok

    end 
end
