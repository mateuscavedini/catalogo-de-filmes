class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(name: params[:genre][:name])

    return redirect_to genre_path(@genre.id) if @genre.save

    render :new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(param[:id])

    if @gender.update(name: params[:genre][:name])
      return redirect_to genre_path(@genre.id)
    else
      render :edit
    end
  end
end