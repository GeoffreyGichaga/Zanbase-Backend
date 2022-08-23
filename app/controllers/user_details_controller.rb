class UserDetailsController < ApplicationController
    before_action :authorize
    def create
        current_user = session[:user_id]
        user_details = current_user.UserDetail.create!(user_payment_details_params)
        render json: user_details, status: :created
    end


    # def update
    #     user = UserDetail.update!(user_payment_details_params)
    #     render json: user, status: :created
    # end 






    private

    def user_payment_details_params
        params.permit(:name_on_account,:bank_name,:account_number,:bank_code,:branch_code,:telephone_number)
    end 

    def authorize
        return render json: {error: "Not Authorized"}, status: :unauthorized unless session.include? :user_id
    end
end
