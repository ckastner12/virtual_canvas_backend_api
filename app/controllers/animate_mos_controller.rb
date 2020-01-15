class AnimateMosController < ApplicationController
    def create
        animate_mo = AnimateMo.new(animate_mo_params)
        picture = Picture.find(animate_mo.picture_id)
        if animate_mo.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                AnimateMoSerializer.new(animate_mo)
            ).serializable_hash
            ActionCable.server.broadcast("pictures_channel_#{picture.id}", {method: "CHANNEL_POST", animation: serialized_data})
            render json: animate_mo
        end
    end

    def update
        animation = AnimateMo.find(params[:id])
        picture = Picture.find(animation.picture_id)
        if animation.update(animate_mo_params)
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                AnimateMoSerializer.new(animation)
            ).serializable_hash
            ActionCable.server.broadcast("pictures_channel_#{picture.id}", {method: "CHANNEL_PATCH", animation: serialized_data})
            render json: animation
        else
            render json: {error: "Invalid Update", message: ""}
        end
    end

    private

    def animate_mo_params
        params.require(:animate_mo).permit(:picture_id, :user_id, :shape, :loc_x, :loc_y)
    end
end
