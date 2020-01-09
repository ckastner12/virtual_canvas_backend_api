class PictureController < ApplicationController
    def index
        pictures = pictures.all
        render json: pictures
    end

    def create
        picture = Picture.new(picture_params)
        if picture.save
            serialized_data =  ActiveModelSerializers::Adapter::Json.new(
                PictureSerializer.new(picture)
            ).serializable_hash
            PictureChannel.broadcast_to 'pictures_channel', serialized_data
            head :ok
        end
    end

    private
    def picture_params
        params.require(:picture).permit(:title)
    end
end
