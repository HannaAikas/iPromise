class PromisesController < ApplicationController
  # def new
    
  # end

  def index
    # session[:host_user_id] = current_user.id
    # @user = User.find(current_user.id)

    # puts "DEBUG: #{@user.promises}"
    @promises = Promise.all
    # puts "DEBUG2: #{@user.promises[0]}"
  end

  # def create
  #   @promise = Promise.new(params.require(:promise).permit(:text)) 
  #   @promise.save!

  #   redirect_to @promise 
  # end

  # def show
  #   @promise = Promise.find(params[:id])
  # end
end
