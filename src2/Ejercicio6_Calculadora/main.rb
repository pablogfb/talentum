load 'Calculadora.rb'

puts "Bienvenidos a la calculadora"
puts "-"*20


#Inicialización de variables
salir = false
@operaciones =[]
resultado= 0
@contador = 1

#Función para solicitar los valores al usuario

 def pedirValor
    print "Introduzca primer valor:"
    @valor1 = gets.strip.to_f
    print "Introduzca segundo valor:"
    @valor2 = gets.strip.to_f
  end
  
#Función para guardar registro de las operaciones
  
  def registro operacion, valor1,valor2,res
    @operaciones << "#{@contador}.-Se ha hecho la #{operacion} de #{valor1} y #{valor2} y el resultado ha sido #{res}"
    @contador += 1   
  end
 
 
#Definición del menú
 while salir == false
  sleep(1)
  puts "¿Qué operación desea hacer?: \n 1.Sumar \n 2.Resta \n 3.Multiplicar \n 4.Dividir \n 5.Mostrar operaciones\n 6.Salir"
  opcion = gets.strip.to_i
  case opcion
  when 1 then
    pedirValor
    resultado = Calculadora.suma @valor1,@valor2
    puts resultado
    registro "suma",@valor1,@valor2,resultado
  when 2 then
    pedirValor
    resultado = Calculadora.resta @valor1,@valor2
    puts resultado
    registro "resta",@valor1,@valor2,resultado
  when 3 then
    pedirValor
    resultado = Calculadora.multiplica @valor1,@valor2
    puts resultado
    registro "multiplicación",@valor1,@valor2,resultado
  when 4 then
        pedirValor
    resultado = Calculadora.divide @valor1,@valor2
    puts resultado
    registro "división",@valor1,@valor2,resultado
  when 5 then  
    puts "Operaciones realizadas"
    puts "-"*15
    puts @operaciones
  when 6 then
    salir = true
    puts "Ciao pescao!"
  else
  puts "No me trolees!"
  end
end
