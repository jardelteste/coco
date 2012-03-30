class Seat < ActiveRecord::Base
	belongs_to :flight
	def validate
		if baggage > flight.baggage_allowance
			errors.add_to_base("Você tem excesso de bagagem")
		end

		if flight.seats.size >= flight.capacity
			errors.add_to_base("As reservas para este voo estão esgotadas")			
		end
	end
end
