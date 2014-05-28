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
    @event= Event.find(params[:id].to_i)
    # binding.pry
    if Time.now.to_i>@event.startfrom.to_i
      respond_to do |format|
        format.json{ render :json => {:stat=>"passed"} }
      end
    else
      current_user.events << @event
      respond_to do |format|
        if current_user.save
          format.json{ render :json => {:stat=>"success"} }
        else
          format.json{ render :json => {:stat=>"failed"} }
        end
      end
    end
  end
  def unattend
    @event= Event.find(params[:id].to_i)
    # binding.pry
    if Time.now.to_i>@event.startfrom.to_i
      respond_to do |format|
        format.json{ render :json => {:stat=>"passed"} }
      end
    else
      current_user.events.delete(@event)
      respond_to do |format|
        if current_user.save
          format.json{ render :json => {"stat"=>"success"} }
        else
          format.json{ render :json => {"stat"=>"failed"} }
        end
      end
    end
  end
end
