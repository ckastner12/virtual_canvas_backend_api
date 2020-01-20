class AnimateMosController < ApplicationController
    def create
        animate_mo = AnimateMo.new(animate_mo_params)
        # picture = Picture.find(animate_mo.picture_id)
        if animate_mo.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                AnimateMoSerializer.new(animate_mo)
            ).serializable_hash
            ActionCable.server.broadcast("pictures_channel_#{animate_mo.picture_id}", {type: "CHANNEL_POST_BURST", animation: serialized_data})
            render json: animate_mo
        end
    end

    def update
        animation = AnimateMo.find(params[:id])
        # picture = Picture.find(animation.picture_id)
        if animation.update(animate_mo_params)
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                AnimateMoSerializer.new(animation)
            ).serializable_hash
            ActionCable.server.broadcast("pictures_channel_#{animation.picture_id}", {type: "CHANNEL_PATCH_BURST", animation: serialized_data})
            render json: animation
        else
            render json: {error: "Invalid Update", message: ""}
        end
    end

    def destroy
        animation = AnimateMo.find(params[:id])
        id = animation.id
        ActionCable.server.broadcast("pictures_channel_#{animation.picture_id}", {type: "CHANNEL_DELETE_BURST", animation_id: id})
        animation.delete
        render json: {type: "HTTP_DELETE_BURST", animation_id: id}
    end

    private

    def animate_mo_params
        params.require(:animate_mo).permit(:picture_id, :user_id, :shape, :color, :radius_1, :radius_2, :count, :duration, :angle, :stroke_width)
    end
end
