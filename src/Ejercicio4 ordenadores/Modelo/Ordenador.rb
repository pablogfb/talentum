load 'Modelo/Conectividad.rb'
load 'Modelo/Disco.rb'
load 'Modelo/Grafica.rb'
load 'Modelo/Procesador.rb'
load 'Modelo/Puertos.rb'
load 'Modelo/Ram.rb'
load 'Modelo/Componente.rb'

class ModeloPC::Ordenador
  
    
  def initialize disco, procesador, puertos, ram, conectividad, grafica
    @disco=disco
    @procesador=procesador
    @puertos=puertos
    @ram=ram
    @conectividad=conectividad
    @grafica=grafica
  end
  
  def precio_total
    @total= @disco.precio.to_i+@procesador.precio.to_i+@puertos.precio.to_i+@ram.precio.to_i+@conectividad.precio.to_i+@grafica.precio.to_i
  end
  
   def to_s
        "Descripción de componentes:\n#{@disco}#{@procesador}#{@puertos}#{@ram}#{@conectividad}#{@grafica}El precio total: #{precio_total} €"
  end
end

