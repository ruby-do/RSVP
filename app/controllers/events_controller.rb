class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @registration = Registration.new
    @event = Event.first
  end
end
