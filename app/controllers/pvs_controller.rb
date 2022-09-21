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

        # INtern details 
        name = @current_user.name
        

        
    end
end
