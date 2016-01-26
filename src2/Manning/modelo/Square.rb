class Square < Geometric
attr_accessor :width,:height
def initialize width, height
@width = width.to_f
@height = height
end

def wPerimeter
  (2*@height)+@width
end

def wArea
 @width * @height
end

end