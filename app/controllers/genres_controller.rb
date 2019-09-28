class GenresController < ApplicationController 
  
    def new
        new_genre
    end 

    def create
        new_genre
        update_genre
        genre_redirect
    end

    def show
        find_genre
    end

    def edit
        find_genre

    end

    def update
        find_genre
        update_genre
        genre_redirect
    end

    private
      def genre_params
          params.require(:genre).permit(:name)
      end

      def new_genre
          @genre = Genre.new
      end

      def find_genre
          @genre = Genre.find(params[:id])
      end

      def update_genre
          @genre.update(genre_params)
      end

      def genre_redirect
           redirect_to genre_path(@genre)
      end
end 