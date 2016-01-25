

class ModeloPC::Procesador < ModeloPC::Componente
  attr_accessor :frecuencia, :modelo
  def initialize frecuencia, modelo, nucleos, fabricante, precio
    @frecuencia= frecuencia
    @modelo= modelo
    @nucleos=nucleos
    super fabricante, precio
  end
   def to_s
    "Procesador: #{@frecuencia}, #{@modelo}, #{@nucleos}, #{@fabricante}, #{@precio}\n"
  end
end
