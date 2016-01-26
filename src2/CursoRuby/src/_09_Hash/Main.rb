#Un hash es una coleccion de datos que mantiene una estructura clave=>valor
#Son conocidos como Arrays asociativos
#No son indexados, se busca por la clave

#Creamos un array vacío

hash={}
otroHash = Hash.new

#add elementos
hash["clave"]= "valor"
hash["otraClave"]= 3


#recuperar elementos
puts hash["clave"] #recuperamos el valor asociado a esa clave
puts "El valor de la clave es #{hash["clave"]}"

#solo se admite una clave para un valor dado
#si repitiéramos una clave se cambiaría el valor
hash["clave"]= "otro valor"
puts hash["clave"]


#podemos inicializar un hash con valores
otroHash ={"clave1"=> "valor1", "clave2"=>"valor2"}
puts otroHash
puts otroHash["clave2"]

#Para poner claves en un hash, ruby recomienda el uso de los símbolos ':simbolo1'
hashSimbolo = {:simbolo1 => "valor1Simbolo"}
puts hashSimbolo [:simbolo1]
hashSimbolo = {:simbolo2 => "valor2Simbolo"}
hashSimbolo = {:simbolo3 => "valor3Simbolo"}

unless hashSimbolo [:simbolo4]
  puts "el valor no existe"
end

#Los simbolos son inmutables y únicos en todo el programa
#Inmutable quiere decir que una vez los atributos hayan sido establecidos no se pueden cambiar
variable1 = "valor1"
#convertimos un string a símbolo

hash[variable1.to_sym] ="valor2"
puts hash[:valor1]

#Un hash puede contener cualquier cosa, como arrays

hashEquipos = {}
hashEquipos[:madrid] = ["C.Ronaldo","Casillas","Raul"]
hashEquipos[:rayo]=["Trashorras","Amaya","Manucho"]

for jugador in hashEquipos[:madrid]
  puts jugador
end


puts "-------"
#Podemos mostrar un array con todas las claves del hash

puts hashEquipos.keys.inspect

#Podemos mostrar un array con todos los valores del hash

puts hashEquipos.values.inspect


puts "--- Equipos de la liga talentum ---"

for equipo in hashEquipos.keys
  puts "-Equipo: #{equipo}"
  for jugador in hashEquipos[equipo]
    puts "--Jugador: #{jugador}"
  end
end
