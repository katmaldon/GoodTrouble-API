class User < ApplicationRecord

    has_many :user_events
    has_many :user_resources
    has_many :events, through: :user_events
    has_many :resources, through: :user_events
    has_many :notes

    #validates :username, uniqueness: { case_sensitive: false }

    #has_secure_password

end
