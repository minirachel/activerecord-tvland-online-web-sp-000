class Show < ActiveRecord::Base
    belongs_to :networks
    has_many :actors, through: :characters
end