# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  bio             :string
#  email           :string
#  password_digest :string
#  profile_image   :string
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  attending_id    :integer
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:events, { :class_name => "Event", :foreign_key => "host_id", :dependent => :destroy })
  has_many(:rosters, { :class_name => "Roster", :foreign_key => "guests_id", :dependent => :destroy })
  
end
