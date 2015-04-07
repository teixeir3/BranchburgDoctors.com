# == Schema Information
#
# Table name: observances
#
#  id          :integer          not null, primary key
#  start_date  :date
#  name        :string(255)      not null
#  link        :string(255)      not null
#  description :text
#  photo_id    :integer
#  display     :boolean          default(TRUE), not null
#  position    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Observance < ActiveRecord::Base
  
  validates :start_date, :name, :link, :user, presence: true
  
 
  
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id,
    inverse_of: :downloads
  )
  
  include Imageable
  
  def self.current_month_display
      self.all_display.select { |x| x.start_date.month == Date.today.month }
  end
end
