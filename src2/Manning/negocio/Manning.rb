class Manning

  attr_accessor :vel,:hr,:q
  def initialize conduit, geometry
    @hr = geometry.wArea/geometry.wPerimeter
    @vel= (1/conduit.manningCoef)*(@hr**0.6666666)*Math.sqrt(conduit.slope)
    @q= geometry.wArea*@vel*1000
  end

end
