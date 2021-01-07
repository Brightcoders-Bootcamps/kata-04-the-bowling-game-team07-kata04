# frozen_string_literal: true

require './app/bowling_game'

describe BowlingGame do
  describe 'BowlingGame call metod start' do
    context 'start game' do
      it 'return result score / frames' do
        game = BowlingGame.new
        expect(game.start.length).to eq(10)
      end
    end
  end
end
