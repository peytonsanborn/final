# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  despriction :string
#  event_name  :string
#  image       :string
#  location    :string
#  time        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  host_id     :integer
#
class Event < ApplicationRecord
  belongs_to(:host, { :required => true, :class_name => "User", :foreign_key => "host_id" })
  has_many(:rosters, { :class_name => "Roster", :foreign_key => "event_id", :dependent => :destroy })
end
