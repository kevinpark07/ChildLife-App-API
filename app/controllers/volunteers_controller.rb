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
        image = Cloudinary::Uploader.upload(params[:profile_image])
        vol = Volunteer.create!(name: params[:name], age: params[:age], email: params[:email], password: params[:password], profile_image: image["url"], approved: false)
        if vol.save
            render json: vol
        else
            render json: {error: vol.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        vol = Volunteer.find(params[:id])
        image = Cloudinary::Uploader.upload(params[:profile_image])
        vol.update!(name: params[:name], age: params[:age], email: params[:email], password: params[:password], profile_image: image["url"], approved: params[:approved])
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
