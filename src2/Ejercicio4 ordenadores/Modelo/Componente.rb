load 'Modelo/ModeloPC.rb'

class ModeloPC::Componente
  attr_accessor :precio, :fabricante
  def initialize fabricante, precio
    @fabricante=fabricante
    @precio=precio    
  end
  
end