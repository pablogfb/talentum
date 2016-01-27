load 'agenda/modelo/Persona.rb'
load 'videoclub/modelo/Persona.rb'
load 'agenda/negocio/GestionPersonas.rb'

personasAgenda = Agenda::Modelo::Persona.new
personaVideclub = Videoclub::Modelo::Persona.new

personasAgenda.edad =34
personasAgenda.nombre= "Pepe"

personaVideclub.dni="2345435"
personaVideclub.nombre="Ramon"
