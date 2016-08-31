class Client
	def client_id
		clients = {
		    'pepe' => '123',
		    'juan' => '456',
		    'maria' => '789'
		}

	end
	def priced		
		priced = {
		    '123' => '100',
		    '456' => '200',
		    '789' => '300'
		}
	end
end

def client
	@client ||= Client.new
end