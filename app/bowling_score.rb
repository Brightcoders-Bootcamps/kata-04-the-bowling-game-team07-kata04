# frozen_string_literal: true

class BowlingScore
  @@scores = []

  def score(frame)
    @@scores << frame
  end

  def score_get
    @@scores
  end
end
