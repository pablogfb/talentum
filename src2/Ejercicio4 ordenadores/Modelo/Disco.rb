load 'Modelo/Componente.rb'
load 'Modelo/ModeloPC.rb'
class ModeloPC::Disco < ModeloPC::Componente
  attr_accessor :memoria, :modelo, :velocidad
  def initialize memoria, modelo, velocidad, fabricante, precio
    @memoria=memoria
    @modelo=modelo
    @velocidad=velocidad
    super fabricante, precio
  end
  def to_s
    "Disco duro: #{@memoria}, #{@modelo}, #{@velocidad}, #{@fabricante}, #{@precio}\n"
  end
end
