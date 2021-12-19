class ApplicationController < ActionController::API
    
#----Apartments----------------------------------------------------

    before_action :apartments, only:[:index]
    before_action :new_apt, only:[:create]
    before_action :info_apt, only:[:update]
    before_action :nomore_apt, only:[:destroy]

#----Tenants----------------------------------------------------

    before_action :add_tenant,only:[:create]
    before_action :tenant_info, only:[:update]
    before_action :left_tenant,only:[:destroy]

#----Leases----------------------------------------------------

    before_action :des_leases,only:[:destroy]   
    
end

private

#----Apartments----------------------------------------------------
  
    def apartments
        Apartment.all
    end

    def apartment
        Apartment.find(params[:id])
    end

    def new_apt
        Apartment.create(apt_params)
    end

    def info_apt
        apt_required = apartment
        apt_required.update(apt_params)
    end

    def nomore_apt
        de_apt = apartment
        de_apt.destroy
    end

    def apt_params
        params.permit(:number)
    end

#----Tenants----------------------------------------------------

     def tenants
        Tenant.all
     end

     def tenant
        Tenant.find(params[:id])
    end

    def add_tenant
        Tenant.create(tenant_params)
    end

    def tenant_info
       info_change = tenant
       info_change.update(tenant_params)
    end

    def left_tenant
        bye_tenant = tenant
        bye_tenant.destroy
    end


    def tenant_params
        params.permit(:name,:age)
    end

    #----Leases----------------------------------------------------

    def des_leases
        lease = Lease.find(params[:id])
        lease.destroy
    end