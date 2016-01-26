valor = 5


#Bucle. El do es innecesario
while valor <10 do
  puts "El valor es #{valor}"
  valor +=1
end


#Recorrer un rango
for i in 5..10
  puts "valor del for: #{i}"
end


#Lo más importante es que al menos se ejecuta una vez
begin
  puts "El valor de i es mayor, es #{i}"
  i -=1
end while i>5


#Hasta que se cumpla
until i == 0
  puts "i no es 0, es #{i}"
  i-=1
end

#Recorrer una matriz
for i in 0..2
  for j in 0..2
    puts "Fila #{i} Columna #{j}"
  end
end


