

class ModeloPC::Puertos < ModeloPC::Componente
  attr_accessor :usb, :hdmi,:usb3
  def initialize usb,usb3,hdmi, fabricante, precio
    @usb=usb
    @usb3=usb3
    @hdmi=hdmi
    super fabricante, precio
  end
   def to_s
    "Puertos: #{@usb}, #{@usb3}, #{@hdmi}, #{@fabricante}, #{@precio}\n"
  end
end
