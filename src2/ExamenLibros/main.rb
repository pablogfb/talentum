#EJERCICIO DE EXAMEN DE PABLO GARCÍA FDEZ-BUJARRABAL
load 'modelo/Libro.rb'
load 'dao/LibrosDAO.rb'
load 'negocio/GestionLibros.rb'


#Creamos el archivo y el nexo
dao = Dao::LibrosDAO.new
gestor = Negocio::GestionLibros.new dao

#Dado que lo vamos a usar mucho creamos un método para listar de manera ordenada
def list gestor
 puts "Listamos contenido"
puts "-"*15
puts gestor.listar
puts "-"*15
end

#Creamos los libros
libro1= Modelo::Libro.new  "El Hobbit", "J.R.R. Tolkien","Un enano canijo y peludo se junta con enanos más fuertes y peludos para despertar a un dragón de su siesta"
libro2= Modelo::Libro.new  "El Señor de los Anillos: La Comunidad del Anillo", "J.R.R. Tolkien","El sobrino del enano peludo de antes tiene que salir corriendo de su pueblucho para juntarse con un grupo de frikis"
libro3= Modelo::Libro.new  "El Señor de los Anillos: Las dos Torres", "J.R.R. Tolkien","Los frikis se separan y cada uno va por su cuenta a jugarse la vida de la forma más absurda porque un viejo en pijama se lo dice"
libro4= Modelo::Libro.new  "El Señor de los Anillos: El Retorno del Rey", "J.R.R. Tolkien","El vagabundo del grupo de antes se autoproclama rey por consejo del viejo del pijama y se dedica a mascacrar orcos inocentes"


#Los damos de alta en la colección
puts "Creando 4 libros"
gestor.alta libro1
gestor.alta libro2
gestor.alta libro3
gestor.alta libro4

#Listamos la colección
list gestor

#Borramos el Hobbit
puts "Borramos el Hobbit"
gestor.baja "El Hobbit"


#Listamos la colección
list gestor


#Modificamos un libro
puts "Modificamos un libro"
libro4.titulo= "eSdlA: El retorno del rey"
libro4.descripcion= "Modificamos la historia para que los ganadores queden como los buenos y los orcos como perversos y malvados"
gestor.modificar "El Señor de los Anillos: El Retorno del Rey",libro4

#Listamos la colección
list gestor