class SongsController < ApplicationController
  
    def index
        @songs = Song.all
    end

    def new
        new_song
    end 

    def create
        new_song
        update_song
        song_redirect
    end

    def show
        find_song
    end

    def edit
        find_song
    end

    def update
        find_song
        update_song
        song_redirect
    end

    private
      def song_params
          params.require(:song).permit(:name, :artist_id, :genre_id)
      end

      def new_song
          @song = Song.new
      end

      def find_song
          @song = Song.find (params[:id])
      end

      def update_song
          @song.update(song_params)
      end

      def song_redirect
          redirect_to song_path(@song)
      end
      
end 