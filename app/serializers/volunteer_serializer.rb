class VolunteerSerializer < ActiveModel::VolunteerSerializer
    attributes :name, :age, :email, :password, :approved, :profile_image

    has_many :interviews

end