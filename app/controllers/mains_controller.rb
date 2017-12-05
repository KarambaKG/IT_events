class MainsController < ApplicationController

  def index
  end

  def all_organizers
    @all_organizers = Organizer.all
  end

  def about_organizer
    @organizer = Organizer.find(params[:id])
  end

end
