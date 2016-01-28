def funcionInversa numero
  raise ArgumentError, "Sólo admite números" unless numero.is_a? Numeric
  1.0/numero
end


#Si se produce un error entre el begin y el rescue salta a lo que hay entre el rescue y el end
begin
  puts funcionInversa 5
  puts funcionInversa "luc"
rescue 
  puts "te has colao bacalao"
end

#Podemos decirle qué tipo de excepciones queremos capturar
begin
  puts funcionInversa 5
  puts funcionInversa "luc"
rescue Exception => e
  puts "te has colao bacalao"
  puts e.inspect
  
ensure
 puts"Este código se ejecutará siempre, tanto si hay error como si no"

end