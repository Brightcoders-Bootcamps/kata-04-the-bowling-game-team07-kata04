# frozen_string_literal: true

require './app/bowling_frame'

describe BowlingFrame do
  describe 'BowlingFrame call metod frame' do
    context 'push throw for save' do
      it 'return array' do
        save_frame = BowlingFrame.new
        save_frame.frame(4)
        save_frame.frame(6)
        expect(save_frame.get_frames.length).to eq(2)
      end
    end
  end
end
