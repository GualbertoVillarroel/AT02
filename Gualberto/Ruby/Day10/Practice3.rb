def user
	print"Insert a username: "
	usr = gets.chomp.to_s

	case usr
		#Se debe usar asterisco para que se puedan ingresar todos los caracteres
		when /^[a-z0-9_]*$/; puts"The user was created" 
		else; puts"The user cannot be created" 
	end

end

def passwd
	print"Insert a password: "
	pass = gets.chomp.to_s

	case pass
		when /^[a-z0-9A-Z]{8,16}*$/; puts"The password was created" 
		else; puts"The password cannot be created" 
	end
	    
end

def email
	print"Insert an email: "
	mail = gets.chomp.to_s

	case mail
		when /^[a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/ ; puts"The email was created" 
		else; puts"The email cannot be created" 
	end
end

user
passwd
email

