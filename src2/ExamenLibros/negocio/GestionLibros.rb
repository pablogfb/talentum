
 module Negocio
  class GestionLibros
    def initialize dao
      @librosDao= dao
    end

    def alta libro
      @librosDao.alta libro
    end

    def baja titulo
      @librosDao.baja titulo
    end

    def modificar titulo,libro
      @librosDao.modificar titulo,libro
    end

    def listar
      @librosDao.listar
    end
  end
end