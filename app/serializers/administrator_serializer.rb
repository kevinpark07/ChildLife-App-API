class AdministratorSerializer < ActiveModel::AdministratorSerializer
    attributes :name, :age, :email, :password, :department, :position, :profile_image

    has_many :interviews

end
