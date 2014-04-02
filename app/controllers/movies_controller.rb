class MoviesController < ApplicationController

  def index
    if params[:query].present?
      query = "%#{params[:query]}%"
      @movies = Movie.where("name like ? or description like ?", query, query)
    else
      @movies = Movie.all
    end
    respond_to do |format|
      format.html
      format.json { render json: @movies }
    end
  end
end
