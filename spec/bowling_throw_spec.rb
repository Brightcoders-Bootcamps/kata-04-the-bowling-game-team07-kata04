# frozen_string_literal: true

require './app/bowling_throw'

describe BowlingThrow do
  describe 'BowlingThrow call metod throw_get' do
    context 'launching ball' do
      it 'return rand number' do
        throw = BowlingThrow.new
        expect(throw.throw_get(0, 10)).to satisfy { |number| !number.nil? }
      end
    end
  end
end
