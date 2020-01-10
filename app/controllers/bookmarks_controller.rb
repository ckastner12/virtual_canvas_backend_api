class BookmarksController < ApplicationController

    def create
        byebug()
        bookmark = Bookmark.new(bookmark_params)
        if bookmark.save
            render json: {message: "Canvas Bookmarked!"}
        end
    end

    private
    def bookmark_params
        params.require(:bookmark).permit(:user_id, :picture_id)
    end
end
