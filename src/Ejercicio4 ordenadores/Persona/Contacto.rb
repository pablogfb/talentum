

class ModeloAgenda::Contacto
   attr_accessor :dni,:nombre,:apellidos,:email,:telefono,:direccion
   
  def initialize (dni,nombre,apellidos,email,telefono,direccion)
    @dni = dni
    @nombre = nombre
    @apellidos = apellidos
    @email = email
    @telefono = telefono
    @direccion = direccion
    
#también se puede inicializar asi
#@dni,@nombre,@apellidos,@email,@telefono,@cacahuete = dni,nombre,apellidos,email,telefono,cacahuete

  end
  
 #He cambiado direccion por cacahuete para comprobar que no tiene que ver con el nombre de la clase
  def to_s
    "#{@dni},#{@nombre},#{@apellidos},#{@email},#{@telefono},#{@direccion}"
  end
end 




