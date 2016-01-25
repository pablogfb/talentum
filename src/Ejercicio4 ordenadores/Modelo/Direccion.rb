
class ModeloPC::Direccion
  
  attr_accessor :mac_address
  
  def initialize
    @mac_address = "#{(1+Random.rand(16)).to_s(16)}#{(1+Random.rand(16)).to_s(16)}:#{(1+Random.rand(16)).to_s(16)}#{(1+Random.rand(16)).to_s(16)}:#{(1+Random.rand(16)).to_s(16)}#{(1+Random.rand(16)).to_s(16)}:#{(1+Random.rand(16)).to_s(16)}#{(1+Random.rand(16)).to_s(16)}:#{(1+Random.rand(16)).to_s(16)}#{(1+Random.rand(16)).to_s(16)}:#{(1+Random.rand(16)).to_s(16)}#{(1+Random.rand(16)).to_s(16)}"
  end
   
   def to_s
     "MAC: #{mac_address}"
   end 
   
end