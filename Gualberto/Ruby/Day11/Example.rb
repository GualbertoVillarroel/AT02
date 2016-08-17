file_example = File.open('test.txt', 'w+')		#Abre o crea, con read and write
file_example.truncate(0)						#Borra todo desde la linea 0
file_example.write('line1')
file_example.close								#Guarda los cambios
file_example = File.open('test.txt')
print file_example.read
