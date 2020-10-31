class InterviewsController < ApplicationController
    
    def index 
        interview = Interview.all
        render json: interview
    end

    def show
        interview = Interview.find(params[:id])
        render json: interview
    end

    def new
        interview = Interview.new
    end

    def create
        volunteerObj = Volunteer.find(params[:volunteer_id])
        admin = Administrator.all[0]
        interview = Interview.create!(date: params[:date], time: params[:time], volunteer: volunteerObj, administrator: admin)
        if interview.save
            render json: interview
        else
            render json: {error: interview.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        interview = Interview.find(params[:id])
        interview.update!(interview_params)
        if interview.save
            render json: interview
        else
            render json: {error: interview.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        interview = Interview.find(params[:id])
        interview.destroy
        render json: interview
    end

    private
    
    def interview_params
        params.require(:interview).permit(:date, :time, :link, :notes)
    end

end
