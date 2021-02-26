class Team < ActiveRecord::Base
    has_many :players
    belongs_to :coach, class_name: "User"
    has_secure_password
end
