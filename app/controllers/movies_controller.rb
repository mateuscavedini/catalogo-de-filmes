class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(
      title: params[:movie][:title],
      year: params[:movie][:year],
      plot: params[:movie][:plot],
      country: params[:movie][:country],
      duration: params[:movie][:duration],
      director_id: params[:movie][:director_id],
      genre_id: params[:movie][:genre_id]
    )

    return redirect_to movie_path(@movie.id) if @movie.save

    render :new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(
      title: params[:movie][:title],
      year: params[:movie][:year],
      plot: params[:movie][:plot],
      country: params[:movie][:country],
      duration: params[:movie][:duration],
      director_id: params[:movie][:director_id],
      genre_id: params[:movie][:genre_id]
    )
      return redirect_to movie_path(@movie.id)
    end

    render :edit
  end
end