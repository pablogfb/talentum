
variable1=1


#Condiciones

#Igual:
if variable1 == 1
  puts "Pues va a ser que sí"
end

#Distinto:
if variable1 != 2
  puts "Pues va a ser que es 1"
end

#Uso del else:
if variable1 == 2
  puts "Pues va a ser que sí"
else
  puts "Whatever"
end

#Condición OR:
if variable1 == 1 || variable1 == 2
  puts "Pues va a ser que es 1"
end

#Mayor o igual:
if variable1 >=0
  puts "Mayor igual que uno"
end

#Uso de elsif:
if variable1 <1 then
  puts "lo que sea"
elsif variable1 ==1 
  puts "es igual a uno"
end

#Ejecutar algo si cumple condición
puts "Por huevos es uno" if variable1 ==1

variable= nil


#Comprobamos si la variable viene vacía
if !variable then
  puts "La variable es nula"
end

#También tenemos unless (si no)
unless variable
  puts "La variable es nula (si no)"
end

#Ojo con las condiciones: Un sólo "=" no compara, asigna

variable =3
#Uso del case
case
  when variable ==1 then
    puts "Case es  1"
  when variable ==2 then
    puts "Case es 2"
  else
    puts "No es ni 1 ni 2"
  end


#Otra forma de usar case
case variable
when 1 then
  puts "Es 1"
when 2 then
  puts "es 2"
else 
  puts "No es uno ni dos"
end


#Comprobar rango "1..10"
case variable
when 1..10
  puts "El número está entre 1 y 10"
else
  puts "es otra cosa"
end









