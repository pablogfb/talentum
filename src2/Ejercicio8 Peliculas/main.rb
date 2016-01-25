load 'modelo/Pelicula.rb'
load 'dao/PeliculasDAO.rb'
load 'negocio/GestionPeliculas.rb'

puts "Inicializando..."

dao = PeliculasDAO.new
gestor = GestionPeliculas.new dao
@salir = false

puts "Colección de películas"
puts "-"*15
while @salir == false
  
def check resultado
    if resultado == true
    puts "Gestión realizada con éxito"
  else
    puts "No se ha podido hacer la gestión"
  end
end
  

puts "¿Qué desea hacer?\n\t1.-Añadir película\n\t2.-Borrar película\n\t3.-Listar películas\n\t4.-Actualizar película\n\t5.-Salir"
option = gets.strip.to_i
case option
when 1 then
  puts "Introduzca título:"
  titulo = gets.strip
  puts "Introduzca director:"
  director = gets.strip
  puts "Introduzca actores (separados por comas):"
  actores = gets.strip
  actores = actores.split(/,/)
  pelicula= Pelicula.new titulo,director,actores
  resultado = gestor.add pelicula
  check resultado
when 2 then
  puts "Introduzca ID de la película a borrar"
  id = gets.strip.to_i
  resultado = gestor.delete id
  check resultado
when 3 then
  puts "El listado de películas es:\n"
  puts gestor.list
  
when 4 then
  puts "Introduzca ID de la película a actualizar"
  id = gets.strip.to_i
  puts "Introduzca nuevo título:"
  titulo = gets.strip
  puts "Introduzca nuevo director:"
  director = gets.strip
  puts "Introduzca nuevos actores:"
  actores = gets.strip
  pelicula= Pelicula.new titulo,director,actores
  pelicula.id = id
  resultado = gestor.update pelicula
  check resultado
when 5 then
  @salir = true
end
end
  
