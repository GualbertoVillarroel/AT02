#No se necesita inicializar
class Example
	def method1
		puts"OK"
	end
	def method2
		puts"BYE"
	end
end

Example.new.method1
Example.new.method2

#Atajo
a=Example.new
a.method1