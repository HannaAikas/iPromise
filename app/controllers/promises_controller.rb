class PromisesController < ApplicationController
  def new
    
  end

  def index
    @promises = Promise.all
  end

  def create
    @promise = Promise.new(params.require(:promise).permit(:text)) 
    @promise.save

    redirect_to @promise 
  end

  def show
    @promise = Promise.find(params[:id])
  end
end
