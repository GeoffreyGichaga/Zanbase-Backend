class TutorialsController < ApplicationController

    def index
        user = User.find(session[:user_id])
        if (user)
            tutorials = Tutorial.all
            render json: tutorials, status: :ok
        else
            render_unaothorized_response
        end 
            

    end

    def show
        tutorial = find_tutorial
        render json: tutorial, status: :ok
    end 

    def create
        tutorial = Tutorial.create(tutorial_params)
        render json: tutorial, status: :created
    end 

    def update
        tutorial = find_tutorial
        tutorial.update(tutorial_params)
        render json: tutorial, status: :created
    end 

    def destroy
        tutorial = find_tutorial        
        tutorial.destroy
        head :no_content
    end 

  



    private 
    def tutorial_params
        params.permit(:image_url,:title,:description,:video_url)
    end 

    def find_tutorial
        tutorial = Tutorial.find(params[:id])
    end 

    def render_unaothorized_response
        render json: {error: "Please Login first"}, status: :unauthorized
    end

    





    
end
