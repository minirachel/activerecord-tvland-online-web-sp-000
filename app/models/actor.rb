require 'pry'

class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        [self.first_name, self.last_name].join(' ')
    end

    def list_roles
        self.characters.map do |c|
            "#{c.name} - #{c.show.name}"
        end
        #Character.name - #Show.name
    end
end