
load 'Persona.rb' #cargamos la clase para crear nuestro primer objeto persona

persona = Persona.new("50233489D","Pepe","Hombre",23)
persona2 = Persona.new("35214587F","Manuel","Hombre",45)



persona.setColorOjos "Azules"
puts persona.getColorOjos

#para que funcione tenemos que crear primero el attr_accessor 
puts persona.nombre

#cambiamos el nombre. Podemos porque hemos incluido el attr_accessor
persona.nombre = "Félix"
puts persona.nombre

persona.colorOjos= "Verdes"
puts persona.colorOjos

#podemos coger en dni pero no modificarlo porque hemos puesto attr_reader
puts persona2.dni
#persona.dni ="otrodni"

#sale por consola la posición de memoria por que lleva implicito el to_s. Así que lo definimos en un método a parte para que nos 
#devuelva el valor del atributo
puts persona

persona.saludar
persona2.saludar

#persona edad 23
#persona2 edad 45
#estamos trabajando sobre objetos, así que cambiamos la referencia de persona2
persona2 = persona
persona2.edad = 44

puts persona
puts persona2.edad

