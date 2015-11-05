# == Schema Information
#
# Table name: announcements
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  title      :string           not null
#  link       :string
#  short_desc :text
#  full_desc  :text
#  display    :boolean          default(TRUE), not null
#  position   :integer
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Announcement < ActiveRecord::Base
  validates :title, :user, presence: true
  
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id,
    inverse_of: :announcements
  )
  
  include Imageable
  
  def self.current_month_display
      self.all_display.select { |x| x.start_date.month == Date.today.month }
  end
  
  # Returns all announcements that are active based on their start / end dates
  def self.all_active
      self.all_display.select { |x| x.start_date <= Date.today <= x.end_date }
  end
end
