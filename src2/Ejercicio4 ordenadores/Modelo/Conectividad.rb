class ModeloPC::Conectividad < ModeloPC::Componente
  attr_accessor :wifi, :bluetooh,:rj45,:direccion
  def initialize wifi, bluetooh, rj45, fabricante, precio
    @wifi=wifi
    @bluetooh=bluetooh
    @rj45=rj45
    @direccion=ModeloPC::Direccion.new
    super fabricante, precio
  end

  def to_s
    "Conectividad: #{wifi}, #{bluetooh}, #{rj45}, #{@fabricante}, #{@precio}, #{@direccion}\n"
  end
end
