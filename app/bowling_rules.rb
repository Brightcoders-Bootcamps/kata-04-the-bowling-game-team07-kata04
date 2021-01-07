class BowlingRules
    @@pins = 10

    def sum(array)
        array.reduce(:+)
    end

    def spare(frame)
      if frame.length == 2
        check_result = sum(frame)
        if check_result == 10
            true
            #puts "Spare! #{frame}"
        end
      end
    end

    def strike(frame)
      if frame[0] == 10
        true
      end 
    end

    def pin(throw)
      @@pins = @@pins - throw
      @@pins
    end

    def pin_get
      @@pins
    end

    def reset_pin
      @@pins = 10
    end
end