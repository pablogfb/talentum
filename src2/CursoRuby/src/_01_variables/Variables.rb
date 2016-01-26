=begin
Hola que ase  
=end

#Las variables se declaran con empezando por una letra minúscula o un "_"

variable1= 1
puts variable1
variable2=2
puts variable2

sVariable= "Esto es una cadena"

#Para concatenar se usa +. Para concaternar strings e integer tenemos que usar .to_s
puts variable1.to_s+" "+sVariable

#Para meter código dentro de una cadena se utiliza "#{}". De esa manera no hace falta pasar usar .to_s

puts "El valor de la variable sVariable es: #{sVariable}"

variable= nil

puts "el valor de la variable sVariable es: #{variable}"

#Las constantes suelen ir todas en mayúsculas aunque sólo es obligatoria la primera. También se suele usar snake case
CONSTANTE = "Pablo"

OTRA_CONSTANTE = "Pepe"

puts OTRA_CONSTANTE
puts "La constante es: #{OTRA_CONSTANTE}"


#Las constantes no se deben cambiar pero ruby lo permite aunque lanza un warning
OTRA_CONSTANTE ="Jonás"
puts OTRA_CONSTANTE

#También existen algunas pseudo variables. Variables predefinidas
puts __FILE__

#Con Line nos dice las lineas

puts __LINE__

#Acumuladores
valor=3
valor = valor+5
puts valor

#Una manera de acortar
valor+=5
puts valor
valor-=3
puts valor
valor /=2
puts valor
valor *=2
puts valor

#Cosas equivalentes
valor1= "pepe"
valor1 +=" te saludo"
puts valor1

valor1= nil
#En caso de que no esté asignado un valor a la variable se establece el valor 8, en caso contrario no se cambiará el valor
valor1 ||=8
puts valor1
valor1 ||=12
puts valor1

#Se pueden hacer asignaciones múltiples

valor1 = valor2 = valor3 = 94

puts valor1
puts valor2
puts valor3

#Todas las variables vistas son variables de tipo local, Ruby también soporta variables globales, visibles desde cualquier parte del programa.
#Se declaran usando el símbolo $

$variableGlobal = 50

puts "El valor de la variable global es: #{$variableGlobal}"

#Tipos básicos en Ruby
tipoFixnum = 3
#También tenemos bignum, mucho más rango que fixnum, no tenemos porque preocuparnos por las conversiones, ruby lo hace automático.
tipoString = "whatever"
tipoFloat = 3.5 #Usando punto para los decimales
tipoTrue= true
tipoFalse = false
tipoNil = nil
puts tipoFixnum.class
puts tipoString.class
puts tipoFloat.class
puts tipoTrue.class
puts tipoFalse.class
puts tipoNil.class

#Conversiones

puts "El numero "+ 3.to_s
puts "3".to_i + 5
#Si empieza por un valor se queda con el valor
puts "3pepe".to_i + 10
#Si no puede convertirlo, devuelve un '0'
puts "pepe3".to_i + 10
puts 3.to_f

puts 2 + 3 * 5 #Dará 17 por preferencia de operaciones
puts (2 + 3)*5
puts 2/0 #Da error por dividir un entero entre 0
puts 2.0/0 #Da Infinity por trabajar con reales.






