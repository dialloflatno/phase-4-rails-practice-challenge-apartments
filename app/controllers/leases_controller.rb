class LeasesController < ApplicationController

    def destroy 
    
        render json: des_leases, status: :no_content
    end

end
