load 'modelo/Geometric.rb'
load 'modelo/Conduit.rb'
load 'modelo/Square.rb'
load 'modelo/Circle.rb'
load 'modelo/Trapezoid.rb'
load 'negocio/Manning.rb'

circulo = Circle.new 3,1.2
puts circulo.wArea
puts circulo.beta
puts circulo.wPerimeter

cuadrado = Square.new 0.5,0.2
puts cuadrado.wArea
puts cuadrado.wPerimeter

trapecio = Trapezoid.new 1,0.5,0.5,0.3
puts cuadrado.wArea
puts cuadrado.wPerimeter


conduit = Conduit.new 0.2,0.009

manning = Manning.new conduit,cuadrado
puts manning.hr
puts manning.q
puts manning.vel

