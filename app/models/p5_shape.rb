class P5Shape < ApplicationRecord
  belongs_to :picture
  belongs_to :user
  enum frequency: ["treble", "mid", "bass"]
  enum shape: ["rect", "ellipse", "triangle", "line"]

end
