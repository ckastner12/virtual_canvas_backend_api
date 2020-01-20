class PicturesController < ApplicationController
    def index
        pictures = Picture.all
        render json: pictures
    end

    def show
        picture = Picture.find(params[:id])
        if picture
            render json: picture
        else
            render json: {error: "Invalid Request", details: "No picture with this id"}
        end
    end

    def create
        picture = Picture.new(picture_params)
        if picture.save
            serialized_data =  ActiveModelSerializers::Adapter::Json.new(
                PictureSerializer.new(picture)
            ).serializable_hash
            ActionCable.server.broadcast "pictures_channel_#{picture.id}", serialized_data
            render json: picture
        end
    end

    private
    def picture_params
        params.require(:picture).permit(:title, :user_id, :background)
    end
end

