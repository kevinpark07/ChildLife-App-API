class MeetingsController < ApplicationController
    
    def index 
        meetings = Meeting.all
        render json: meetings
    end

    def show
        meeting = Meeting.find(params[:id])
        render json: meeting
    end

    def new
        meeting = Meeting.new
    end

    def create
        meeting = Meeting.create!(meeting_params)
        if meeting.save
            render json: meeting
        else
            render json: {error: meeting.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        meeting = Meeting.find(params[:id])
        meeting.update!(meeting_params)
        if meeting.save
            render json: meeting
        else
            render json: {error: meeting.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        meeting = Meeting.find(params[:id])
        meeting.destroy
        render json: meeting
    end

    private
    
    def meeting_params
        params.require(:meeting).permit(:date, :time, :link, :notes, :volunteer, :patient_name, :patient_age, :patient_info)
    end


end
