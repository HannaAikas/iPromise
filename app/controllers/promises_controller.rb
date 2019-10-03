class PromisesController < ApplicationController
  def index
  end

  def new
  end

  def create
    promise_text = promise_params['text']
    promise_end_date = promise_params['end_datetime']
    promise_interval = promise_params['interval']

    @promise = Promise.new
    @promise.text = promise_params.delete(:text)
    @promise.end_datetime = promise_params.delete(:end_datetime)
    @promise.interval = promise_params.delete(:interval)
    @promise.user_id = current_user.id
    @promise.save!

    redirect_to promises_path
  end
end
