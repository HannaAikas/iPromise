require 'date'

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
    @promise.end_datetime = promise_params.delete(:end_datetime)
    @promise.interval = promise_params.delete(:interval)
    @promise.punishment = promise_params.delete(:punishment)
    @promise.user_id = current_user.id
    @promise.last_reminder_time = DateTime.now
    @promise.status = true
    @promise.save!

    redirect_to promises_path
  end

  def promise_params
    params.require(:promise).permit(:text, :end_datetime, :interval, :punishment)
  end

  def congrats
    @promise = Promise.find(params[:id])
  end

  def punishment
    @promise = Promise.find(params[:id])
  end
end
