# frozen_string_literal: true

class BowlingFrame
  @@frames = []

  def frame(throw)
    @@frames << throw
  end

  def get_frames
    @@frames
  end
end
