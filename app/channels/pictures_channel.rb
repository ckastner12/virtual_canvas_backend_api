class PicturesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "pictures_channel_#{params[:id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    ActionCable.server.broadcast "pictures_channel_#{data.canvas_id}", data
  end
end
