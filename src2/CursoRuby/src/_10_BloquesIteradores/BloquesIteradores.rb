#Un bloque es una porción de código encerrada entre llaves {}
#o entre do..end
#El bloque sólo puede aparecer después de usar un método
#Dicho método debería estar preparado para usar dicho bloque

3.times {
  puts "Hola times"
}

3.times do 
  puts "Hola times con do..end"
end

#En los bloques también podemos poner una variable
#en el caso del metodo times representará cada una
#de las iteraciones

3.times {
  |var|
  puts "Hola time, vamos por la iteracion #{var}"
}


#Para recorrer un array
array = ["Pepe", "Pepín", "Pepón"]
array.size.times{
  |var|
  puts "Hola time, vamos por la iteracion #{array[var]}"
}

1.upto(3) {
  puts "Hola upto"
}


#más métodos
puts "------"
array = [1,2,3,4,"pepe","manuel"]
array.each {
 |var| #Contendrá cada uno de los elementos del array
   puts "Valor del array #{var}"
}

array.each_with_index {
 |valor,indice|
 puts "El valor del indice #{indice} es #{valor}"
}

load "../_04_clases/Persona.rb"
arrayPersonas =[(Persona.new "33","Felix","Pocoymal",33), (Persona.new "3435","Pepe","muchoybien",33)]
#Select va a devolver un valor que coincida con la condición
resultado = arrayPersonas.select{
  |persona|
    persona.nombre == "Pepe"
}
puts resultado


puts "---Borrar elemento con condición---"
arrayPersonas.delete_if{
  |persona|
    persona.nombre = "Pepe"
}

#Todos los métodos pueden recibir un bloque como argumento implicito
#Putiendo invocar dicho bloque en cualquier momento de nuestro código
#usando la palabra reservada 'yield'
puts "-"*10
def metodo
  puts "Esto es un método de ejemplo"
  yield 
end

metodo {puts "Esto es un bloque de ejemplo"}


def metodo
  puts "Esto es otro método de ejemplo"
  yield "FLIPA PEPINILLOS"
end

metodo {
  |var|
  puts "Esto es otro bloque de ejemplo con el parámetro #{var}"
}

def metodo parametro
  puts "Esto es otro metodo MAS de ejemplo"
  yield parametro
end

metodo ("Pepe"){
  |var|
  puts "Esto es otro bloque de ejemplo con el parámetro #{var}"
}
