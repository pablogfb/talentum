class Square < Geometric
attr_accessor :width,:height
def initialize width, height
@width = width.to_f
@height = height
@wArea = @width * @height
@wPerimeter = (2*@height)+@width
end

end