class User < ActiveRecord::Base
    has_secure_password
    has_many :players, through: :teams
end
