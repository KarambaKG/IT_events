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
    @all_events = Event.all.order('created_at DESC')
  end

  def about_event
    @about_event = Event.find(params[:id])
  end

end
