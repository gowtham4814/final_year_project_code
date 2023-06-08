require 'twilio-ruby'
class DetectionController < ApplicationController
  before_action :auth

  def Home
    @data = Detect.last
    if @data.present?
      # AlertNotificationJob.perform_later(@data.unconcious, @data.fire)
    end
  end



  def logs
    timestamp = Time.now

    start_time = timestamp.beginning_of_day
    end_time = timestamp.end_of_day

    @data = Detect.all.to_a

    @total = {
      not_safe: Detect.where(timestamp: start_time..end_time).sum(:not_safe),
      no_mask: Detect.where(timestamp: start_time..end_time).sum(:no_mask),
      no_helmet: Detect.where(timestamp: start_time..end_time).sum(:no_helmet),
      safe: Detect.where(timestamp: start_time..end_time).sum(:safe),
      unconcious: Detect.where(timestamp: start_time..end_time).sum(:unconcious),
      fire: Detect.where(timestamp: start_time..end_time).sum(:fire)
    }
  end





  def update
    @data = Detect.last
    respond_to do |format|
      format.js
   end
  end

  def graph
  end

  def mute
    if session['mute'] == 'yes'
      session['mute'] = 'no'
    else
      session['mute'] = 'yes'
    end
    redirect_to '/home'
  end
  private

  def auth
    if session['name'] != 'gowtham'
      redirect_to '/'
    end
  end
end
