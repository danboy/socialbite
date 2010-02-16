class EventsController < ApplicationController

  def index
    @service = GCal4Ruby::Service.new
    @service.authenticate("socialbiteevents@gmail.com", "elsol100")
    @cal = GCal4Ruby::Calendar.find(@service, "socialbiteevents@gmail.com", {:scope => :first})
    @events = GCal4Ruby::Event.find(@cal, "",{ :sort_order => :ascending,:range => {:start => Time.now, :end => 30.days.from_now}}).sort_by {|event| event.start}
  end

end
