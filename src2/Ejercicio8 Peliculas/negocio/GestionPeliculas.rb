class GestionPeliculas
  def initialize dao
    @daoPeliculas=dao
  end
  
  def add pelicula
    resultado = @daoPeliculas.addPelicula pelicula
    return resultado
  end
  
  def list
    @daoPeliculas.listPeliculas
  end
  
  def delete peliculaId
    resultado = @daoPeliculas.deletePelicula peliculaId
    return resultado
  end
  
  def update pelicula
    resultado = @daoPeliculas.updatePelicula
    return resultado
  end
end