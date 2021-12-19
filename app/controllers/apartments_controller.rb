class ApartmentsController < ApplicationController

    def index
        render json: apartments , status: :ok
    end
    
    
    def create
        render json: new_apt , status: :created
        
    end
    
    
    def update 
        render json: info_apt , status: 201
        
    end
    
    
    def destroy 
        
        render json: nomore_apt , status: :no_content
    
    end

end
