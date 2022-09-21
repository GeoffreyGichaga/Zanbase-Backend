class UserDetailsController < ApplicationController
    def create
        user_details = UserDetail.create!(user_payment_details_params)
        render json: user_details, status: :created
    end


    # def update
    #     user = UserDetail.update!(user_payment_details_params)
    #     render json: user, status: :created
    # end 




 # jeff id = 10 
# UserDetail.create(user_id: 10,name_on_account: "JEFF jeff",bank_name: "I&M Bank",account_number: "14567276",bank_code: "005",branch_code: "9487h",telephone_number: "075634738735",id_number: 87645362)

    private

    def user_payment_details_params
        params.permit(:user_id,:name_on_account,:bank_name,:account_number,:bank_code,:branch_code,:telephone_number,:id_number)
    end 

    
end
