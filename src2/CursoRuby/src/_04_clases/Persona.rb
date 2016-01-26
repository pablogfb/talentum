#todos estos son métodos de instancia

class Persona
  
  #con esto estamos creando sus respectivos getters y setters
  attr_accessor :nombre,:sexo,:edad   
  
  #si no queremos que se pueda cambiar un atributo, como el dni por ejemplo
  #damos permisos de solo lectura
  
  attr_reader :dni
  
  #también tenemos de solo escritura
  #attr_writer
  
  #Genero una variable de clase! (con @@)
  @@numero_de_personas = 0
  
  #Defino un método de clase para acceder al nº de personas (con self.loquesea)
  
  def self.getNumeroPersonas
    @@numero_de_personas
  end
  
  #Este es el constructor de clase
  def initialize (dni, nombre, sexo, edad) #injección de dependencias
    @dni = dni
    @nombre = nombre 
    @sexo = sexo
    @edad = edad
    #al no inicializarlo, decicimos que este atributo no es imprescindible para la creación del objeto persona. No lo pasas por constructor
    @colorOjos = nil
  end
  
  
#utilizando set y get es la manera clásica de hacerlo
  def setColorOjos colorOjos
    @colorOjos = colorOjos
  end
   
  def getColorOjos
    @colorOjos
  end

#no se puede poner espacio entre el igual y el nombre porque estas definiendo el nombre de un método
 def colorOjos= colorOjos
   @colorOjos = colorOjos
 end

#lkjdlsjk
def colorOjos
  @colorOjos
end


def saludar 
 puts "Hola a todos, soy una persona y me llamo #{@nombre}"  
end


def to_s
  "#{@dni},#{@nombre},#{@edad},#{@sexo},#{@colorOjos}"
end

end