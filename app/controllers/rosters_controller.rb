class RostersController < ApplicationController
  def index
    matching_rosters = Roster.all

    @list_of_rosters = matching_rosters.order({ :created_at => :desc })

    render({ :template => "rosters/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_rosters = Roster.where({ :id => the_id })

    @the_roster = matching_rosters.at(0)

    render({ :template => "rosters/show.html.erb" })
  end

  def create
    the_roster = Roster.new
    the_roster.event_id = params.fetch("query_event_id")
    the_roster.guests_id = session.fetch(:user_id)


    if the_roster.valid?
      the_roster.save
      redirect_to("/events/#{the_roster.event_id}", { :notice => "Roster created successfully." })
    else
      redirect_to("/events/#{the_roster.event_id}", { :alert => the_roster.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_roster = Roster.where({ :id => the_id }).at(0)

    the_roster.event_id = params.fetch("query_event_id")
    the_roster.guests_id = session.fetch(:user_id)

    if the_roster.valid?
      the_roster.save
      redirect_to("/rosters/#{the_roster.event_id}", { :notice => "Roster updated successfully."} )
    else
      redirect_to("/events/#{the_roster.event_id}", { :alert => the_roster.errors.full_messages.to_sentence })
    end
  end


  def destroy
    the_id = params.fetch("path_id")
    the_roster = Roster.where({ :id => the_id }).at(0)

    the_roster.destroy

    redirect_to("/rosters", { :notice => "Roster deleted successfully."} )
  end
end
