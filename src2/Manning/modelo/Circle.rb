class Circle
  attr_accessor :radio,:height,:beta
  
  def initialize radio,height
    @radio = radio.to_f
    @height = height.to_f
    @beta = 2*Math.acos((@radio-@height)/@radio)
  end
  
  def wArea
    ((@radio**2)/2)*(@beta-Math.sin(@beta))

  end
  
  def wPerimeter
    @radio*@beta
  end
end