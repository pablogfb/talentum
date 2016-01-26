class PeliculasDAO
  @@coleccion=[]
  @@id=1
  @@contador = 0

  def addPelicula pelicula  
    if @@contador <10 
      pelicula.id =@@id
      @@id +=1
      @@coleccion<<pelicula
      @@contador +=1
      resultado = true
      return resultado
    else
    resultado = false
    return resultado
    end
  end
  
  def listPeliculas
    @@coleccion
  end
  
  def deletePelicula peliculaId
    for pelicula in @@coleccion
      if pelicula.id == peliculaId
        @@coleccion.delete pelicula
        resultado = true
        @@contador -=1
        return resultado
      end
    end
    resultado = false
    return resultado
  end
  
  def updatePelicula pelicula
    i=0
    for elemento in @@contador
      if elemento.id == pelicula.id
        @@contador[i]=pelicula
        resultado = true
        return resultado
      end
     i+=1
    end
    resultado = false
    return resultado
  end
end
