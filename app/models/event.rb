# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  despriction :string
#  event_name  :string
#  image       :string
#  location    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  host_id     :integer
#  roster_id   :integer
#
class Event < ApplicationRecord
end
