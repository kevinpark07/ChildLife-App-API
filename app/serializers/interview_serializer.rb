class InterviewSerializer < ActiveModel::InterviewSerializer
    attributes :date, :time, :link, :notes

    belongs_to :volunteer
    belongs_to :administrator

end