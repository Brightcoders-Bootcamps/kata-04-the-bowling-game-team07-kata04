# frozen_string_literal: true

# 1 BowlingGame /
# throw (rand : [0..10] -> result numbre)
# rules (check_throw(number) -> ? -> )*
# intentos : 10 -> score : Array<numbre> -> new Array(9)
# score.length ? 9 -> throws == 3 : throws 2
# score = [[0,1],[0,1], ... [0,1,2]]
# play : throw = [4, 6] ? spare : nil // throw = [10,0] -> score = [[10,0]]

require_relative './bowling_throw'
require_relative './bowling_frame'

class BowlingGame
  def start
    throw = BowlingThrow.new
    set_frame = BowlingFrame.new

    result_throw = throw.get_throw

    set_frame.frame(result_throw)
  end
end
