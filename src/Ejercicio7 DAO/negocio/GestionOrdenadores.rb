class GestionOrdenadores
  def initialize dao,log
    @OrdenadoresDao = dao
    @OrdenadoresLog = log
  end

  def guardarOrdenador ordenador
    @OrdenadoresDao.insert ordenador
    @OrdenadoresLog.generarLog "Ordenador #{ordenador} insertado"
  end

  def borrarOrdenador ordenador
    @OrdenadoresDao.deleteid ordenador.id
    @OrdenadoresLog.generarLog "Ordenador #{ordenador} borrado"
  end

  def listarOrdenadores
    @OrdenadoresDao.list
  end

  def actualizarOrdenador ordenador
    @OrdenadoresDao.update ordenador
    @OrdenadoresLog.generarLog "Ordenador #{ordenador} actualizado"
  end

end
