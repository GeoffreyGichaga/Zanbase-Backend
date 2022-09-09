class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create

    def create
        @user = User.find_by(email: params[:email])
        if @user&.authenticate(params[:password])
            token = JsonWebToken.encode(user_id: @user.id)
            time = Time.now + 24.hours.to_i

            render json: { jwt: token, exp: time.strftime('%m-%d-%Y %H:%M'),firstname: @user.firstname,lastname: @user.lastname,
             email: @user.email, role: @user.role }, status: :ok
        else
            render json: { error: 'unauthorized' }, status: :unauthorized
          
        end
    end  

    
 

    def show
        
        render json: @current_user, status: :ok
    end

    

    def destroy
        session.delete :user_id
        head :no_content
    end 










    
end
