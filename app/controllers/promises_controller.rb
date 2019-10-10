class PromisesController < ApplicationController
  before_action :require_login

  def index
    @user = User.find(current_user.id)
    @promises = @user.promises
  end

  def new; end

  def create
    @promise = Promise.new
    @promise.text = promise_params.delete(:text)
    @promise.other_text = promise_params.delete(:other_text)
    @promise.end_datetime = promise_params.delete(:end_datetime)
    @promise.interval = promise_params.delete(:interval)
    @promise.punishment = promise_params.delete(:punishment)
    @promise.other_punishment = promise_params.delete(:other_punishment)
    @promise.user_id = current_user.id
    @promise.save!

    redirect_to promises_path
  end

  def promise_params
    params.require(:promise).permit(:text, :other_text, :end_datetime, :interval, :punishment, :other_punishment)  
  end

  def congrats
    @promise = Promise.find(params[:id])
  end

  def punishment
    @promise = Promise.find(params[:id])
  end

  def edit
    @promise = Promise.find(params[:id])
  end

  def update
    @promise = Promise.find(params[:id])
    permitted_columns = params.require(:promise).permit(:text, :other_text, :end_datetime, :interval, :punishment, :other_punishment)  
    @promise.update(permitted_columns)

    redirect_to promises_path
  end
end
