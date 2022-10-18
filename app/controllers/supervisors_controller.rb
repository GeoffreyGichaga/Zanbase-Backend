class SupervisorsController < ApplicationController

    def index
        sups = Supervisor.all
        render json: sups ,status: :ok
    end
end
