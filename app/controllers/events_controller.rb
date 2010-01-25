class EventsController < ApplicationController

  def index
    @service = GCal4Ruby::Service.new
    @service.authenticate("dnawara@gmail.com", "cH33tOz!")
    @calendars = @service.calendars
    @cal = GCal4Ruby::Calendar.find(@service, "Dan Nawara", {:scope => :first})
    @events = GCal4Ruby::Event.find(@cal, "",{:sort_order => 'descending', :range => {:start => Time.now, :end => 7.days.from_now}})
  end

end
