load'Calculadora.rb'

 def mostrarDatos (valor)
      puts valor
 end

puts "Introduzca un valor"
valor1 = gets.strip.to_f
puts "El primer valor es el #{valor1}"
puts "Introduzca otro valor"
valor2 = gets.strip.to_f
puts "Ha elegido el #{valor2}"

calculadora = Calculadora.new

puts calculadora.suma valor1,valor2

mostrarDatos  "El resultado de sumar es: #{calculadora.suma valor1,valor2}"
mostrarDatos "El resultado de restar es: #{calculadora.resta valor1,valor2}"
mostrarDatos "El resultado de dividir es:  #{calculadora.divide valor1,valor2}"
mostrarDatos "El resultado de multiplicar es: #{calculadora.multiplica valor1,valor2}" 