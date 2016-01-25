class LogDAO
  def generarLog texto
    puts "<LOG> #{Time.new} #{texto}"
  end
end