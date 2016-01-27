class Libro
  attr_accessor :titulo,:autor,:descripcion,:id
  def initialize titulo,autor,descripcion
    @titulo=titulo
    @autor=autor
    @descripcion=descripcion
    @id
  end
  
  def to_s
    "#{@titulo},#{@autor},#{@descripcion}"
  end
  
end