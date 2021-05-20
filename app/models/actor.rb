require 'pry'

class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        [self.first_name, self.last_name].join(' ')
    end

    # def list_roles
    #     binding.pry
    #     self.characters.map do |c|
    #         c.name - c.show_id
    #     end
    # end
end