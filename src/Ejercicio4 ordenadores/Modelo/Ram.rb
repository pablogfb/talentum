

class ModeloPC::Ram < ModeloPC::Componente
  attr_accessor :memoria, :tipo
  def initialize memoria, tipo, fabricante, precio
    @memoria=memoria
    @tipo=tipo
    super fabricante, precio
  end
  def to_s
    "Memoria RAM: #{@memoria}, #{@tipo}, #{@fabricante}, #{@precio}\n"
  end
end
