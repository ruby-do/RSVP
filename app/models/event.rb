class Event < ActiveRecord::Base

  NAME = 'Ruby.do'
  DESCRIPTION = 'Este es el mejor evento del mundo!'
  DATE = DateTime.now
  SEAT_LIMIT = 30
  #TODO: confirm seat limit for this event
  #TODO: Find out the date of the event

  RUBY_DO_EVENT_ID = 0
  JAVASCRIPT_DO_EVENT_ID = 1

end
