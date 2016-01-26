class Trapezoid < Geometric
  def initialize hWidth,lWidth,height,wHeight
    @hypotenuse = Math.sqrt((height**2)+(((hWidth-lWidth)/2)**2))
    @beta = Math.cos(height/@hypotenuse)
    @hypotenuse=wHeight/Math.acos(@beta);
    @lWidth=lWidth
    @height
  end

  def wPerimeter
    (2*@hypotenuse)+@lWidth
  end

  def wArea
    (@lWidth*@height)+(@height*(@hypotenuse*Math.sin(@beta)))
  end
end
  