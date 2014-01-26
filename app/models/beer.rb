class Beer < ActiveRecord::Base
   belongs_to :brewery
	has_many :ratings

	def average_rating
		
		sum = 0
		ratings.each { |r| sum = sum + r.score }

		sum2 = ratings.inject(0) { |total, element| total + element.score }

		return sum2 / ratings.count
 	end

	def to_s
 		"#{name}, #{brewery.name}"
	end
end
