class CoordinateConverter
  attr_accessor :coordinates
  
  BOARD_MAP = {
    "a" => 0,
    "b" => 1,
    "c" => 2,
    "d" => 3,
    "e" => 4,
    "f" => 5,
    "g" => 6,
    "h" => 7
  }
  
  def self.convert_input(ary_input)
    ary_input = ary_input.split("")
    ary_input[0] = BOARD_MAP["#{ary_input[0]}"]
    ary_input[1] = (ary_input[1].to_i - 8).abs
    [ary_input[1], ary_input[0]]
  end
end