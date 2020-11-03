class InterviewSerializer < ActiveModel::InterviewSerializer
    attributes :id, :date, :time, :notes, :volunteer, :administrator

    belongs_to :volunteer
    belongs_to :administrator

end