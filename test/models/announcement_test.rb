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

require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
