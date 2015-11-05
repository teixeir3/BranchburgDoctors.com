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
#  user_id     :integer
#

require 'test_helper'

class ObservanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
