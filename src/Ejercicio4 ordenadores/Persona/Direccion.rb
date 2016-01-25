class ModeloAgenda::Direccion
  #esto da permisos para hacer getter y setter
  attr_accessor :calle,:numero,:piso,:cp,:localidad
  
  def initialize (calle,numero,piso,cp,localidad)
    @calle = calle
    @numero = numero
    @piso = piso
    @cp = cp
    @localidad = localidad  
  end
  
  def to_s
    "#{@calle},#{@numero},#{@piso},#{@cp},#{@localidad}"
  end
end