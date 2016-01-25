class OrdenadoresDAO
  @@Ordenadores =[]
  @@id=0
  def insert elemento
    elemento.id =@@id
    @@id+=1
    @@Ordenadores << elemento
  end
  
  
  #Buscar por ID
  def deleteid idElemento
    for ordenador in @@Ordenadores
      if ordenador.id == idElemento
        @@Ordenadores.delete ordenador
        return
      end
    end
  end
  
 #Borrar elemento (no funciona con una copia del elemento) 
  def delete elemento
    borrar = []
    borrar << elemento
    @@Ordenadores = @@Ordenadores - borrar
  end
 
#La forma que usa él. Primero localizar y luego modificar 
  def update elemento
    i=0
    idAbuscar=elemento.id
    for ordenador in @@Ordenadores
      if ordenador.id == elemento.id
        @@Ordenadores[i]=elemento
      end
      i +=1
    end
  end
  
#Esta forma no le gusta porque manipula el array mientras lo recorre
# def update elemento
#   for ordenador in @@Ordenadores
#     if ordenador.id == elemento.id
#       delete ordenador
#      @@Ordenadores << elemento
#     end
#   end    
# end
   
  def list 
    @@Ordenadores
  end
  
end