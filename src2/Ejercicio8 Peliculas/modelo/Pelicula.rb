class Pelicula
  attr_accessor :titulo, :director, :actores, :id
  def initialize titulo, director,actores
    @titulo = titulo
    @director = director
    @actores = actores
    @id
  end
  def to_s
    "#{@titulo}, #{@director}, #{@actores}"
  end
end