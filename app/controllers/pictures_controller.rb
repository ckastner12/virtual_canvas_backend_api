class PicturesController < ApplicationController
    def index
        pictures = Picture.all
        render json: pictures
    end

    def create
        picture = Picture.new(picture_params)
        if picture.save
            # Unsure whether to keep this as the list of canvases can be obtained using an HTTP request, no reason to clutter the app with more sockets than necessary
            # serialized_data =  ActiveModelSerializers::Adapter::Json.new(
            #     PictureSerializer.new(picture)
            # ).serializable_hash
            # ActionCable.server.broadcast "pictures_channel_#{picture.id}", serialized_data
            # head :ok
            render json: picture
        end
    end

    private
    def picture_params
        params.require(:picture).permit(:title)
    end
end
