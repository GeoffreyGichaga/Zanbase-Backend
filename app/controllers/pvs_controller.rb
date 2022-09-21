class PvsController < ApplicationController

    # Users viewing their pvs 
    def index 
        users_pv = Pv.where(user_id: @current_user.id)
        render json: users_pv, status: :ok                
    end

    # generate payment request
    def payment_request_form
        generated_by = "#{@current_user.firstname} #{@current_user.lastname}"
        if(@current_user.org == "ZanaAfrica Programs")
            budget_holder = "Roopal Thaker"
        else
            budget_holder =  "Megan Mukuria"
        end 
        payee = generated_by
        
        if(@current_user.org == "ZanaAfrica Programs")
            paid_by = "ZAP"
        else
            paid_by = "ZAG"
        end 

        telephone = @current_user.user_detail.telephone_number
        account = @current_user.user_detail.account_number
        bank = @current_user.user_detail.bank_name

        # Description 
        description = "Intern stipend for #{generated_by} from 14th September - 13th October"
        # 
        cost = @current_user.attendance.count * 500

        if(@current_user.role = "Intern")
            budget_code = 8410
        else
            budget_code = 8100
        end 

        all_info = [{
            generated_by => generated_by,
            budget_holder => budget_holder,
            payee => payee,
            paid_by => paid_by,
            telephone => telephone,
            account => account,
            bank => bank  
        }]

        render json: all_info, status: :ok

    end 


    # User's Creating Pv's
 
    def create
        # date of generating pv 
        fdate = Time.new

        date = "#{fdate.day}/#{fdate.month}/#{fdate.year}"

        # The organisation the user belongs to 
        # email_extension = ".org"
        if(@current_user.email.include?(".org"))
            org = "ZanaAfrica Programs"
        else
            org = "ZanaAfrica Group"
        end

        # Progams 
        if(org == "ZanaAfrica Programs")
            program = "ZanaAfrica Programs"
        else
            program = "ZanaAfrica Group"
        end


        # Role of the current user 
        function = @current_user.role

        # Employee details 
        name = "#{@current_user.firstname} - #{@current_user.lastname}"

        # employee id 
        # user_info = UserDetail.where(user_id: @current_user.id)
        
        employee_id = @current_user.user_detail.id_number
        daily_stipend = 500 
        start_day_of_the_week = "#{@current_user.attendances.first.date}"
        end_date_of_the_week  = "#{@current_user.attendances.last.date}"
        number_of_days_worked = @current_user.attendances.count
        amount_payable = @current_user.attendances.count * daily_stipend

        # Payment Details 
        name_on_account = @current_user.user_detail.name_on_account
        bank = @current_user.user_detail.bank_name
        account = @current_user.user_detail.account_number
        bank_code = @current_user.user_detail.bank_code
        branch_code = @current_user.user_detail.branch_code
        telephone = @current_user.user_detail.telephone_number
        prepared_by = "#{@current_user.firstname} #{@current_user.lastname}"
        approved_by = @current_user.supervisor
        authorized_by = "Roopal Thaker"

       

        
    

        new_pv = Pv.create(
            employee_details => [
                {
                    employee_id => employee_id, 
                    daily_stipend => daily_stipend ,
                    start_day_of_the_week => start_day_of_the_week ,
                    end_date_of_the_week => end_date_of_the_week ,
                    number_of_days_worked => number_of_days_worked ,
                    amount_payable => amount_payable 
                }

            ],
            
            payment_details => [
                {
                    name_on_account => name_on_account ,
                    bank => bank ,
                    account => account ,
                    bank_code => bank_code ,
                    branch_code => branch_code ,
                    telephone => telephone 
                }
            ],
            prepared_by => prepared_by ,
            approved_by => approved_by ,
            authorized_by => authorized_by, 
            date => date,
            org => org ,
            program => program,
            function => function 

        ) 
        render json: new_pv, status: :created

    end
    
end


# t.string "employee_details"
# t.string "payment_details"
# t.string "prepared_by"
# t.string "approved_by"
# t.string "authorized_by"
# t.datetime "created_at", precision: 6, null: false
# t.datetime "updated_at", precision: 6, null: false
# t.integer "user_id"
# t.string "date"
# t.string "org"
# t.string "program"
# t.string "function"