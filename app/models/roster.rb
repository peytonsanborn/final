# == Schema Information
#
# Table name: rosters
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#  guests_id  :integer
#
class Roster < ApplicationRecord
  belongs_to(:guests, { :required => true, :class_name => "User", :foreign_key => "guests_id" })
end
