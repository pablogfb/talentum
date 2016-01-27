class GestionPeliculas
  
  attr_accessor :tamañoMaximo, :peliculasDao
  
  def initialize
    @tamañoMaximo = 10
    @peliculasDao
  end
  
  #Params:
  # => pelicula de la clase Pelicula
  #Output:
  # => true si ha sido insertada
  # => false en caso de que esté llena la memoria con tamañoMaximo
  def insertarPelicula pelicula
    if @peliculasDao.listar.size < @tamañoMaximo
      @peliculasDao.insert pelicula
      return true
    else
      return false  
    end
  end
    
  def delete idPelicula
      @peliculasDao.delete idPelicula
    end
    
  def listar
      @peliculasDao.listar
    end
    
  def modificar id
      @peliculaDao.modificar id
  end
end