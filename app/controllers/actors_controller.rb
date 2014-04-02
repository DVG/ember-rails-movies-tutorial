class ActorsController < ApplicationController
  respond_to :json

  def index
    if params[:query].present?
      query = "%#{params[:query]}%"
      respond_with Actor.where("name like ? or gender like ? or bio like ?", query, query, query)
    else
      respond_with Actor.all
    end
  end
end
