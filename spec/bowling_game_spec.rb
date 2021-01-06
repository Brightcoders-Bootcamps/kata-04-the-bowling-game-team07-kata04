# frozen_string_literal: true

require './app/bowling_game'

describe BowlingGame do
  describe 'start game' do
    context 'say hello to player' do
      it 'return string message' do
        game = BowlingGame.new
        expect(game.start).to satisfy { |value| !value.nil? }
      end
    end
  end
end
