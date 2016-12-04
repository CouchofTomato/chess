class Queen
  attr_reader :colour, :symbol
  
  def initialize(colour)
    @colour = colour
    @symbol = set_symbol
  end
  
  def to_s
    self.symbol.encode('utf-8')
  end
  
  private
  
    def set_symbol
      self.colour == :white ? "\u2655" : "\u265B"
    end
end