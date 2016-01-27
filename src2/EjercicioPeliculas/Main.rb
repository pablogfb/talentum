load 'dao/PeliculaDao.rb'
load 'modelo/Pelicula.rb'
load 'modelo/Persona.rb'
load 'modelo/Actor.rb'
load 'modelo/Director.rb'
load 'negocio/GestionPeliculas.rb'

gestorPeliculas = GestionPeliculas.new
gestorPeliculas.tamañoMaximo = 3
gestorPeliculas.peliculasDao= PeliculaDao.new



titulo = "Matrix"
director= Director.new "Hermanos guasosqui",45
actores=[]
neo=Actor.new "Keanu Reeves", "Masculino"
triniti = Actor.new "Mari Trini", "Femenino"
actores <<neo
actores <<triniti

matrix = Pelicula.new titulo, director,actores
resultado = gestorPeliculas.insertarPelicula matrix
puts resultado
puts gestorPeliculas.listar

