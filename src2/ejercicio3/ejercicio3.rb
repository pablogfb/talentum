
def mostrarDatos valor,operacion
  puts "El resultado de la #{operacion} es #{valor}"
end


def suma a,b
  operacion = "suma"
  mostrarDatos a+b,operacion
end

def resta a,b
  operacion="resta"
  mostrarDatos a-b,operacion
end

def multi a,b
  operacion="multiplicación"
  mostrarDatos a*b,operacion
end

def div a,b
  operacion="división"
  mostrarDatos a/b.to_f,operacion
end

def operaciones a,b
  suma a,b
  resta a,b
  multi a,b
  div a,b  
end

puts "Introduzca primer valor: "
valor1= gets.strip.to_i
puts "Introduzca segundo valor: "
valor2= gets.strip.to_i
puts "Introduza operación:\n 1.-Suma\n 2.-Resta\n 3.-Multiplicación\n 4.-División\n 5.-Todas\n"
operacion=gets.strip.to_i
case operacion
when 1
  suma valor1,valor2
when 2
  resta valor1,valor2
when 3
  multi valor1,valor2
when 4
  div valor1,valor2
when 5
operaciones valor1,valor2
else
  puts "Opción errónea"
end

