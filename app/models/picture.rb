# == Schema Information
#
# Table name: pictures
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  position           :integer
#  display            :boolean          default(TRUE), not null
#  imageable_id       :integer
#  imageable_type     :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true, inverse_of: :pictures
  
end
