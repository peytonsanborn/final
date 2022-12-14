class EventsController < ApplicationController
  def index
    matching_events = Event.all

    @list_of_events = matching_events.order({ :created_at => :desc })

    render({ :template => "events/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_events = Event.where({ :id => the_id })

    @the_event = matching_events.at(0)

    render({ :template => "events/show.html.erb" })
  end

  def mine
    matching_events = Event.where({ :host_id => session.fetch(:user_id) })

    @list_of_events = matching_events.order({ :created_at => :desc })

    render({ :template => "events/mine.html.erb" })
  end

  def create
    the_event = Event.new
    the_event.location = params.fetch("query_location")
    the_event.despriction = params.fetch("query_despriction")
    the_event.event_name = params.fetch("query_event_name")
    the_event.host_id = session.fetch(:user_id)
    the_event.image = params.fetch("query_image")
    the_event.time = params.fetch("query_time")

    the_roster = Roster.new
    the_roster.event_id = the_event.id
    the_roster.guests_id = session.fetch(:user_id)

    if the_event.valid? && the_roster.valid?
      the_event.save
      the_roster.save
      redirect_to("/events", { :notice => "Event created successfully." })
    else
      redirect_to("/events", { :alert => the_event.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_event = Event.where({ :id => the_id }).at(0)

    the_event.location = params.fetch("query_location")
    the_event.despriction = params.fetch("query_despriction")
    the_event.event_name = params.fetch("query_event_name")
    the_event.host_id = session.fetch(:user_id)
    the_event.image = params.fetch("query_image")
    the_event.time = params.fetch("query_time")

    if the_event.valid?
      the_event.save
      redirect_to("/events/#{the_event.id}", { :notice => "Event updated successfully."} )
    else
      redirect_to("/events/#{the_event.id}", { :alert => the_event.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_event = Event.where({ :id => the_id }).at(0)

    the_event.destroy

    redirect_to("/events", { :notice => "Event deleted successfully."} )
  end
end
