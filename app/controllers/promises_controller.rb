class PromisesController < ApplicationController
  before_action :require_login

  def index
  end

  def new
  end

  def create
    @promise = Promise.new
    @promise.text = promise_params.delete(:text)
    @promise.end_datetime = promise_params.delete(:end_datetime)
    @promise.interval = promise_params.delete(:interval)
    p current_user.id
    @promise.users_id = current_user.id
    @promise.save!

    redirect_to promises_path
  end

  def promise_params
    params.require(:promise).permit(:text, :end_datetime, :interval)
  end
end
