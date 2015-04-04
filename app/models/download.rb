# == Schema Information
#
# Table name: downloads
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  position   :integer
#  display    :boolean          default(TRUE), not null
#  created_at :datetime
#  updated_at :datetime
#

class Download < ActiveRecord::Base
  
  validates :title, presence: true
  
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id,
    inverse_of: :downloads
  )
  
  include Imageable
  
  
end
