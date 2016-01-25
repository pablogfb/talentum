
#Carga de módulos
load 'Modelo/Componente.rb'
load 'Modelo/Direccion.rb'
load 'Modelo/Conectividad.rb'
load 'Modelo/Disco.rb'
load 'Modelo/Grafica.rb'
load 'Modelo/Procesador.rb'
load 'Modelo/Puertos.rb'
load 'Modelo/Ram.rb'
load 'Modelo/Ordenador.rb'
load 'Modelo/ModeloPC.rb'
load 'Persona/ModeloAgenda.rb'
load 'Persona/Contacto.rb'
load 'Persona/Direccion.rb'

#Generamos unos componentes para el nuevo ordenador
disco= ModeloPC::Disco.new "memoria", "modelo", "velocidad", "fabricante", 225  
procesador= ModeloPC::Procesador.new "frecuencia", "modelo", "nucleos", "fabricante", 350
puertos=ModeloPC::Puertos.new "usb","usb3","hdmi", "fabricante", 23
ram=ModeloPC::Ram.new "memoria", "tipo", "fabricante", 153
conectividad=ModeloPC::Conectividad.new "wifi", "bluetooh", "rj45", "fabricante", 150
grafica=ModeloPC::Grafica.new "memoria", "modelo", "fabricante", 200

#Creamos un nuevo ordenador y le agregamos los componentes
ordenador= ModeloPC::Ordenador.new disco, procesador, puertos, ram, conectividad, grafica

#Creamos un nuevo cliente y su dirección
address1 = ModeloAgenda::Direccion.new("C/Antonio López","33","4ºA","28033","Madrid") 
cliente1 = ModeloAgenda::Contacto.new("50219173d","Rosa","Peres","rosa@gmail.co","677644644",address1)

puts "El ordenador es:\n#{ordenador}"
puts "-"*10
puts "El cliente es: #{cliente1}"



