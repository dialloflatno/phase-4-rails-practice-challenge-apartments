class TenantsController < ApplicationController
   
    def index
        render json: tenants , status: :ok
    end


    def create
        render json: add_tenant , status: :created
    end


    def update 
        render json: tenant_info , status: :ok
    end
    
    
    def destroy 
        render json: left_tenant , status: :no_content
    
    end

end
