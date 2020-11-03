class InterviewSerializer < ActiveModel::InterviewSerializer
    attributes :date, :time, :notes

    belongs_to :volunteer
    belongs_to :administrator

end