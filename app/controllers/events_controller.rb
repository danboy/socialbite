class EventsController < ApplicationController

  def index
    @service = GCal4Ruby::Service.new
    @service.authenticate("socialbiteevents@gmail.com", "elsol100")
    @cal = GCal4Ruby::Calendar.find(@service, "socialbiteevents@gmail.com", {:scope => :first})
    @events = @cal.events().sort_by {|event| event.start}
  end

end
