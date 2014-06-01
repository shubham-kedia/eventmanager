class EventController < ApplicationController
  def index
    @events= Event.all()
    if current_user.present?
      @user_events=current_user.events
    end
  end
  def show
    @event = Event.find(params[:id])
  end
  def attend
    @event= Event.find(params[:id])
    @response=@event.attend(current_user)
    respond_to do |format|
      format.json{ render :json => {:stat=>@response} }
    end
  end
  def unattend
    @event= Event.find(params[:id])
    @response=@event.unattend(current_user)
    respond_to do |format|
      format.json{ render :json => {:stat=>@response} }
    end
  end
end
