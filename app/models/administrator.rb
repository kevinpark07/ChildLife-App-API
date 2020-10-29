class Administrator < ApplicationRecord
    has_many :interviews, :dependent => :destroy
    has_many :volunteers, through: :interviews
end
