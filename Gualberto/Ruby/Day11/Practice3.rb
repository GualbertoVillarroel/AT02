def createFile
	puts"Insert a file name: "
	name = gets.chomp.to_s
	puts"Insert an extension for the file: "
	ext = gets.chomp.to_s
	newFile = File.open("#{name}.#{ext}", 'a+')

	#newFile.truncate(0)

	print"Insert the number of lines to be added: "
	lines = gets.chomp.to_i

	for i in 1..lines 
		puts "Insert the content of the line [#{i}]: "
		written_text = gets.to_s
		newFile.write(written_text)
	end

	newFile.close	
	

	newFile = File.open("#{name}.#{ext}")
	puts newFile.read

end

createFile