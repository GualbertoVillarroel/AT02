module Flight
	def Flight.load_flight
		@static_flight = [
			{
		    'From' => 'TJA',
		    'to' => 'CBA',
		    'date' => '09/01/2016',
		    'flight' => '0375',
		    'available' => 'OK'
			},
			{
		    'From' => 'SCZ',
		    'to' => 'LPZ',
		    'date' => '10/02/2016',
		    'flight' => '0220',
		    'available' => 'OK'
			}
		]
	end

	def Flight.get_list_of_flights(hash1)
		found= false
		@static_flight.each{|hashes| 
			if hashes==hash1
				found= true
			end
			
		}
		return found
	end

end
