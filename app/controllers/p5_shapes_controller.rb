class P5ShapesController < ApplicationController

    def create
        p5_shape = P5Shape.new(p5_shape_params)
        picture = Picture.find(p5_shape_params['picture_id'])
        if p5_shape.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                P5ShapeSerializer.new(p5_shape)
            ).serializable_hash
            ActionCable.server.broadcast("pictures_channel_#{picture.id}", {type: "CHANNEL_POST_SHAPE", animation: serialized_data})
            render json: p5_shape
        end
    end

    def update
        p5_shape = P5Shape.find(params[:id])
        picture = Picture.find(p5_shape.picture_id)
        if p5_shape.update(p5_shape_params)
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                P5ShapeSerializer.new(p5_shape)
            ).serializable_hash
            ActionCable.server.broadcast("pictures_channel_#{picture.id}", {type: "CHANNEL_PATCH_SHAPE", animation: serialized_data})
            render json: p5_shape
        end
    end

    private
    def p5_shape_params
        params.require(:p5_shape).permit(:picture_id, :user_id, :fill, :frequency, :stroke, :type, :width, :height, :amount, :orbit, :spin)
    end
end
