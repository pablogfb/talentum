OPCION = "Opcion de "


def menu *valores
contador=0
puts "MENU".center(20)
puts "-"*20
  for valor in valores
      contador+=1
      puts  contador.to_s+".- "+OPCION+valor
  end
end

menu "borrar","Añadir","Consultar"



