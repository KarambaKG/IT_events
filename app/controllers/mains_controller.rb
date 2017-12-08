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
    @all_events = Event.order('created_at DESC').paginate(:page => params[:page], :per_page => 1)
  end

  def about_event
    @about_event = Event.find(params[:id])
  end

  def about_event_ics_file
    respond_to do |format|
      format.ics do
        cal = Icalendar::Calendar.new
        cal.x_wr_calname = 'Awesome Rails Calendar'
        cal.event do |e|
          e.dtstart     = DateTime.now + 2.hours
          e.dtend       = DateTime.now + 3.hours
          e.summary     = 'Power Lunch'
          e.description = 'Get together and do big things'
        end
        cal.publish
        render plain: cal.to_ical
      end
    end
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
    @past_events = array_past_events.paginate(:page => params[:page], :per_page => 1)
  end

end
