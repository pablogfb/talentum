class Pelicula
  
  attr_accessor :id,:titulo,:director,:actores
  
  #titulo -> String
  #director -> Objeto de la clase Director
  #actores -> Array de la clase Actor
  
  def initialize titulo, director, actores
    @id = nil
    @titulo = titulo
    @director = director
    @actores = actores
  end
  
  def to_s
    "#{@titulo},#{@director},#{@actores},#{@id}"
  end
end