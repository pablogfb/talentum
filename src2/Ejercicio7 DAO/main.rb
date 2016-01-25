load 'modelo/Ordenador.rb'
load 'dao/LogDAO.rb'
load 'dao/OrdenadoresDAO.rb'
load 'negocio/GestionOrdenadores.rb'

puts "Inicializando..."
negocio = GestionOrdenadores.new OrdenadoresDAO.new , LogDAO.new
ordenador1 =Ordenador.new "HP","Pepinazo"
ordenador2 =Ordenador.new "MAC","Robo"
ordenador3 =Ordenador.new "SONY","Hortera"

negocio.guardarOrdenador ordenador1
negocio.guardarOrdenador ordenador2
negocio.guardarOrdenador ordenador3

puts "LISTADO GENERAL DE ORDENADORES"
puts "-"*20
puts negocio.listarOrdenadores

negocio.borrarOrdenador ordenador1

puts "LISTADO GENERAL DE ORDENADORES"
puts "-"*20
puts negocio.listarOrdenadores

ordenador2.marca = "Loquesea"

negocio.actualizarOrdenador ordenador2

puts "LISTADO GENERAL DE ORDENADORES"
puts "-"*20
puts negocio.listarOrdenadores
