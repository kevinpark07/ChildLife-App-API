class VolunteerSerializer < ActiveModel::VolunteerSerializer
    attributes :id, :name, :age, :email, :password, :approved, :profile_image

    has_many :interviews
    has_many :meetings
end