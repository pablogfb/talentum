load 'Direccion.rb'
load 'Contacto.rb'


address1 = Direccion.new("C/Antonio López","33","4ºA","28033","Madrid") 
persona1 = Contacto.new("50219173d","Rosa","Peres","rosa@gmail.co","677644644",address1)

address2 = Direccion.new("C/ Pez "," 2 "," 1ºIzq "," 28055 "," Madrid ")
persona2 = Contacto.new("30215478e","Pepe","Rodriguez","pepe@ruti.es","622888999",address2)

puts persona1
puts persona2

#Podemos modificar los objetos porque al crear la clase hemos puesto la cosa "attr_accesor"
persona2.telefono="914111111"

puts persona2

persona2.direccion = Direccion.new("C/Mayor ","3","5º","04600","Almería")

puts persona2