class Director < Persona
  
  attr_accessor :edad
  
  def initialize nombre, edad
    super nombre
    @edad = edad
  end
  
end