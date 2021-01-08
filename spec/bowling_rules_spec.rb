# frozen_string_literal: true

require './app/bowling_rules'

describe BowlingRules do
  describe 'BowlingRules call metods' do
    context 'check spare rule' do
      it 'return comply rule' do
        rules = BowlingRules.new
        frame = [4, 6]
        expect(rules.spare(frame)).to eq(true)
      end
    end

    context 'check strike rule' do
      it 'return comply rule' do
        rules = BowlingRules.new
        frame = [10, 0]
        expect(rules.strike(frame)).to eq(true)
      end
    end

    context 'check subtract pines' do
      it 'return new value of pins' do
        pins = BowlingRules.new
        throw = 4
        new_value_pins = 6
        pins.pin(throw)
        expect(pins.pin_get).to eq(new_value_pins)
      end
    end
  end
end
