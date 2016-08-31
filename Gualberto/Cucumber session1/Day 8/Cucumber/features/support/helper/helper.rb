module Users
	def Users.load_users
	##load static list users and password into a hash
		clients = {
		    'pepe' => '123',
		    'juan' => '456',
		    'maria' => '789'
		}
	end

	def Users.get_list_of_users(hash)
	end

	def Users.extract_user_from_array(user,array)
	end
	
	def Users.exist_on_array?(user,array)
	end
end
