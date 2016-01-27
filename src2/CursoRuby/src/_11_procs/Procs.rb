#Los bloques NO son objetos y por tanto no pueden ser manipulados,
#Es decir, no tienen métodos asociados al mismo
#los procedimientos SI son objetos y por tanto tienene métodos
#asociados a ellos
#El objetivo principal es evitar el repetir bloques

proc = Proc.new {
  |v|
    puts "esto es un procedimiento con la variable #{v}"
}


#Eso lo interpretaría como un HASH
#proc= {|v| puts "Esto qué es"}

#Con el método call invocamos el bloque
proc.call 3
proc.call
proc.call 3,4

3.times{
  puts "hola"
}

3.times(&proc)
