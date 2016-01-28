module Modelo
  class Libro
    attr_accessor :titulo,:autor,:descripcion
    def initialize titulo,autor,descripcion
      @titulo=titulo
      @autor=autor
      @descripcion=descripcion
    end

    def to_s
      "Libro:\n\t--Título:#{@titulo}\n\t--Autor:#{@autor}\n\t--Descripción:#{@descripcion}"
    end

  end
end