class P5Shape < ApplicationRecord
  belongs_to :picture
  belongs_to :user
  enum frequency: ["treble", "mid", "bass"]
  enum type: ["rect", "ellipse", "triangle", "line"]

end
