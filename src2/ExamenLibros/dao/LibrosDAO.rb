module Dao
  class LibrosDAO
    @@archivo=[]
    
#Alta: Añadimos elemento al Array    
    def alta libro
      @@archivo << libro
    end

#Baja:Buscamos el libro por su título y borramos el elemento

    def baja titulo
      for libro in @@archivo
        if libro.titulo == titulo
        @@archivo.delete libro
        return
        end
      end
    end

#Modificar: Lo más apropiado sería hacerlo por ID pero como nuestro modelo no incluye ID
#debemos hacerlo por título. Necesitamos 2 parámetros por si se modifica también el título
    def modificar titulo,libro
      i=0
      for elemento in @@archivo
        if elemento.titulo == titulo
        @@archivo[i]= libro
        return
        end
        i+=1
      end
    end

#Listar: Devolvemos el array de libros  
    def listar
      @@archivo
    end

  end
end
