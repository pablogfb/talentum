#Los metodos en ruby se crean mediante la palabra reservada "def"

def metodo
   puts "Hola metodo"
end

metodo

#Sobre escribimos el método

def metodo
   puts "Hola metodo 2"
end

metodo 

def saludar nombre
  puts "Hola #{nombre}!"
end

#No es necesario poner paréntesis, los parámetros van separados por comas

saludar "Pablo"

def saludar2 nombre,saludador
  puts "Hola #{nombre}, soy #{saludador}"
end

saludar2 "Paula","Pablo"

#Valores de retorno. No es necesario usar return, aunque puede usarse.

def devolverSaludo
  "Hola devolverSaludo"
end

puts devolverSaludo


def sumar valor1,valor2
  valor1 + valor2
end

puts "El resultado es: #{sumar 12,5}"


#Podemos dar valores por defecto a los parámetros
def sumar2 valor1,valor2=8
  valor1 + valor2
end

puts "El resultado es: #{sumar2 12}"
puts "El resultado es: #{sumar2 12,5}"


def sumar3 valor1,valor2=0,valor3
  puts "#{valor1},#{valor2},#{valor3}"
  valor1+valor2+valor3
end

puts sumar3 2,5
puts sumar3 3,3,3

#No se puede tirar de una variable externa. Dará error. Lo mismo al revés.

#variableExterna=1
#def metodo
#  puts "La variable externa #{variableExterna}"
#end

def metodo *valores
  puts valores
  puts "-----"
  puts valores[0] #valores es un array
end

metodo "hola","que", "ase"


def metodoCompleto *valores
  resultado=0
  for valor in valores
    resultado += valor
  end
  resultado
end

puts metodoCompleto 1,5,9,7,4
puts metodoCompleto 55,12
















