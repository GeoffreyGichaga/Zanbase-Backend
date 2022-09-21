class PvsController < ApplicationController
    def index 
        # date of generating pv 
        date = Time.new

        fulldate = `#{date.day}/#{date.mont}/#{date.year}`

        # The organisation the user belongs to 
        if(@current_user.email includes? "org")
            org = "ZanaAfrica Programs"
        else
            org = "ZanaAfrica Group"
        end

        # Role of the current user 
        function = @current_user.role

        # Employee details 
        name = @current_user.name
        employee_id = @current_user.id_number
        daily_stipend = 500
        start_day_of_the_week = `#{@current_user.attendances.first.date}`
        end_date_of_the_week  = `#{@current_user.attendances.last.date}`
        number_of_days_worked = @current_user.attendances.count
        amount_payable = @current_user.attendances.count * daily_stipend

        # Payment Details 
        name_on_account = @current_user.name_on_account
        bank = @current_user.bank_name
        account = @current_user.account_number
        bank_code = @current_user.bank_code
        branch_code = @current_user.branch_code
        telephone = @current_user.telephone_number
        prepared_by = `#{@current_user.firstname} #{@current_user.lastname}`
        approved_by = @current_user.supervisor
        authorized_by = "Roopal Thaker"

        # Render Information
        render json: {
            fulldate,
            org,
            function,
            employee_details : {
                name,
                employee_id,
                daily_stipend,
                start_day_of_the_week,
                end_date_of_the_week,
                number_of_days_worked,
                amount_payable

            },
            payment_details : {
                name_on_account,
                bank,
                account,
                bank_code,
                branch_code,
                telephone,
                prepared_by,
                approved_by,
                authorized_by

            }

        
        }, status: :ok



        
    end
end
