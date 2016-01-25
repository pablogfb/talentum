class Ordenador
  attr_accessor :marca,:modelo,:id


  def initialize marca,modelo
    @marca=marca
    @modelo=modelo
    @id
  end
  
  def to_s
    "Descripción del equipo:\n\t\tMarca: #{@marca}\n\t\tModelo: #{@modelo}\n\t\tID: #{@id}"
  end
end