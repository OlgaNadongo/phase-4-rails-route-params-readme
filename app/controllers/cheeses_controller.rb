class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    #find cheese using id from url
    cheese=Cheese.find_by(id: params[:id])
    #send JSON response using that cheese object
    render json: cheese


  end

end
