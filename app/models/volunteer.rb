class Volunteer < ApplicationRecord
    has_many :meetings, :dependent => :destroy
    has_many :interviews, :dependent => :destroy
    has_many :administrators, through: :interviews
end
