class VolunteersController < ApplicationController
    
    def index 
        vols = Volunteer.all
        render json: vols
    end

    def show
        vol = Volunteer.find(params[:id])
        render json: vol
    end

    def new
        vol = Volunteer.new
    end

    def create
        vol = Volunteer.create!(vol_params)
        if vol.save
            render json: vol
        else
            render json: {error: vol.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        vol = Volunteer.find(params[:id])
        vol.update!(vol_params)
        if vol.save
            render json: vol
        else
            render json: {error: vol.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        vol = Volunteer.find(params[:id])
        vol.destroy
        render json: vol
    end

    private
    
    def vol_params
        params.require(:volunteer).permit(:name, :email, :age, :profile_image, :approved, :password)
    end

end
