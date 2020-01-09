class AnimateMosChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    picture = Picture.find(params[:picture])
    stream_for picture
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
