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
require_relative './bowling_score'
require_relative './bowling_rules'

class BowlingGame
  def start
    throw = BowlingThrow.new
    set_frame = BowlingFrame.new
    set_score = BowlingScore.new
    set_rule = BowlingRules.new

    (0..9).each do |i|
      (0..1).each do |i|
        @result_throw = throw.throw_get(0, set_rule.pin_get)
        set_frame.frame(@result_throw)
        if set_rule.strike(set_frame.get_frames) == true then
          break
        end
        set_rule.pin(@result_throw)
      end
      if i == 9 then
        if set_rule.strike(set_frame.get_frames) == true then
          set_rule.reset_pin
          @result_throw = throw.throw_get(0, set_rule.pin_get)
          set_frame.frame(@result_throw)
        elsif set_rule.spare(set_frame.get_frames) == true then
          set_rule.reset_pin
          @result_throw = throw.throw_get(0, set_rule.pin_get)
          set_frame.frame(@result_throw)
        end
      end
      set_score.score(set_frame.get_frames)
      set_rule.spare(set_frame.get_frames)
      set_frame.clean_frame
      set_rule.reset_pin
    end
    

    puts set_score.score_get.inspect

  end
end

test = BowlingGame.new
test.start
