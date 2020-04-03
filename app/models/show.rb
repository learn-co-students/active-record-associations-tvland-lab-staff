class Show < ActiveRecord::Base
	has_many :characters
	has_many :actors, through: :characters
	belongs_to :network

	def actors_list
		a = []
		self.actors.each do |act|
			a << act.first_name + " " + act.last_name 
		end
		a


	end
  
end