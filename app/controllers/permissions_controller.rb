class PermissionsController < ApplicationController
    before_action :require_admin, except: [:index, :show]




def index
    @permissions = Permission.paginate(page: params[:page], per_page: 5)
end

def show

end


def new
    @permission = Permission.new
end

def create
    @permission = Permission.new(permission_params)
    if @permission.save
        flash[:success] = "El permiso fue creado satisfactoriamente"
        redirect_to permissions_path
    else
       render 'new' 
    end

end



private 

def permission_params
    params.require(:permission).permit(:name)
end

def require_admin

    if !logged_in? || (logged_in? and !current_user.admin?)
        flash[:danger] = " Only admins can perform that action"
        redirect_to permissions_path
    end
    
end


end