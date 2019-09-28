class ArtistsController < ApplicationController
  
    def new
        new_artist
    end 

    def create
        new_artist
        update_artist
        artist_redirect
    end

    def show
        find_artist
    end

    def edit
        find_artist
    end
     
    def update
        find_artist
        update_artist
        artist_redirect
    end

    private
      def artist_params
          params.require(:artist).permit(:name, :bio)
      end

      def new_artist
          @artist = Artist.new
      end 

      def find_artist
          @artist = Artist.find(params[:id])
      end

      def update_artist
        @artist.update(artist_params)
      end

      def artist_redirect
          redirect_to artist_path(@artist)
      end
end