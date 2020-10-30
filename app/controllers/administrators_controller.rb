class AdministratorsController < ApplicationController

    def index 
        admins = Adminstrator.all
        render json: admins
    end

    def show
        admin = Administrator.find(params[:id])
        render json: admin
    end

    def new
        admin = Administrator.new
    end

    def create
        admin = Administrator.create!(admin_params)
        if admin.save
            render json: admin
        else
            render json: {error: admin.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        admin = Administrator.find(params[:id])
        admin.update!(admin_params)
        if admin.save
            render json: admin
        else
            render json: {error: admin.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        admin = Administrator.find(params[:id])
        admin.destroy
        render json: admin
    end

    private
    
    def admin_params
        params.require(:administrator).permit(:name, :email, :age, :profile_image, :position, :department, :password)
    end

end
