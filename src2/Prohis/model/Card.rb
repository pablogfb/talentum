class Card
  def initialize legal
    @legal=legal
    case @legal
    when true
      @value=1000
    when false
      @value=4000
    when "Teniente"
      @value=3000
    when "Capitan"
      @value=4000
    when "Inspector"
      @value=5000
    end
  end
end