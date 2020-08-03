class Teacher < ApplicationRecord
    has_many :kudos
    has_many :students, through: :kudos
     has_secure_password
    # validates :name, presence: true
    # validates :name, uniqueness: true
#   validates :password, length: { in: 2..10 }

end
