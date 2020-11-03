class AdministratorSerializer < ActiveModel::MeetingSerializer
    attributes :id, :date, :time, :link, :notes, :volunteer, :patient_name, :patient_age, :patient_info

    belongs_to :volunteer

end