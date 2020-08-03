class Student < ApplicationRecord
    has_many :kudos
    has_many :teachers, through: :kudos
end
