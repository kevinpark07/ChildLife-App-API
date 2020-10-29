class Volunteer < ApplicationRecord
    has_many :interviews, :dependent => :destroy
    has_many :administrators, through: :interviews
end
