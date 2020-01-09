class AnimateMosController < ApplicationController
    def create
        animate_mo = AnimateMo.new(animate_mo_params)
        picture = Picture.find(animate_mo.picture_id)
        if animate_mo.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                AnimateMoSerializer.new(animate_mo)
            ).serializable_hash
            AnimateMosChannel.broadcast_to picture, serialized_data
            head :ok
        end
    end

    private

    def animate_mo_params
        params.require(:animate_mo).permit(:picture_id, :user_id, :loc_x, :loc_y)
    end
end
