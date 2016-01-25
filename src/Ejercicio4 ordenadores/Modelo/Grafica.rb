

class ModeloPC::Grafica < ModeloPC::Componente
  attr_accessor :memoria, :modelo
  def initialize memoria, modelo, fabricante, precio
    @memoria=memoria
    @modelo=modelo
    super fabricante, precio
  end
   def to_s
    "Gráfica: #{@memoria}, #{@modelo}, #{@fabricante}, #{@precio}\n"
  end
end
