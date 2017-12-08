class MainsController < ApplicationController

  def index
  end

  def all_organizers
    @all_organizers = Organizer.all
  end

  def about_organizer
    @about_organizer = Organizer.find(params[:id])
  end

  def all_events
    array_future_events = []
    all_events = Event.all
    all_events.each do |event|
      if event.date_and_time > Time.now
        array_future_events.push event
      else next
      end
    end
    @all_future_events = array_future_events.sort_by { |e| e[:date_and_time] }.reverse.paginate(page: params[:page], per_page: 1)
  end

  def show_past_events
    array_past_events = []
    all_events = Event.all
    all_events.each do |event|
      if event.date_and_time < Time.now
        array_past_events.push event
      else next
      end
    end
    @past_events = array_past_events.paginate(page: params[:page], per_page: 1)
  end

  def about_event
    @about_event = Event.find(params[:id])
  end

  def about_event_ics_file
    @event = Event.find(params[:name])
    respond_to do |format|
      format.ics do
        cal = Icalendar::Calendar.new
        cal.x_wr_calname = 'Awesome Rails Calendar'
        cal.event do |e|
          e.dtstart     = @event.date_and_time
          e.dtend       = @event.date_and_time
          e.summary     = @event.name
          e.description = @event.description
          e.location = @event.location
        end
        cal.publish
        render plain: cal.to_ical
      end
    end
  end

end
