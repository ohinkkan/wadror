module RatingAverage
	extend ActiveSupport::Concern

	def average_rating
		
		sum = 0
		ratings.each { |r| sum = sum + r.score }

		sum2 = ratings.inject(0) { |total, element| total + element.score }

		return sum2 / ratings.count

 	end

end

