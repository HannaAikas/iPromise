class PromisesController < ApplicationController
  before_action :require_login
<<<<<<< HEAD
  # def new
    
  # end

  def index
    # @promises = Promise.all

    @promise = User.find(current_user.id)
    @promise = Promise.all
=======

  def index
    @user = User.find(current_user.id)
    @promises = @user.promises
  end

  def new
>>>>>>> b906689df1656d312700e2055073f801624d4f01
  end

  def create
    @promise = Promise.new
    @promise.text = promise_params.delete(:text)
    @promise.end_datetime = promise_params.delete(:end_datetime)
    @promise.interval = promise_params.delete(:interval)
    @promise.user_id = current_user.id
    @promise.save!

    redirect_to promises_path
  end

  def promise_params
    params.require(:promise).permit(:text, :end_datetime, :interval)
  end
end
