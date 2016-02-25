class Event

  NAME = 'Ruby.do'
  DESCRIPTION = 'Este es el mejor evento del mundo!'
  DATE = DateTime.now
  SEAT_LIMIT = 30
  #TODO: confirm seat limit for this event
  #TODO: Find out the date of the event

  RUBY_DO_EVENT_ID = 0
  JAVASCRIPT_DO_EVENT_ID = 1

  attr_reader :name, :description, :date, :seat_limit
  def initialize(name, description, date, seat_limit)
    @name = name
    @description = description
    @date = date
    @seat_limit = seat_limit
  end

  def self.ruby_event_id
    RUBY_DO_EVENT_ID
  end

  def self.first
    new(
      NAME,
      DESCRIPTION,
      DATE,
      SEAT_LIMIT
    )
  end

end
