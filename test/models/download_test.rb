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

require 'test_helper'

class DownloadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
