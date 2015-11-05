# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# => [#<Observance:0x007f86283e9fd0
#   id: 1,
#   start_date: Wed, 01 Apr 2015,
#   name: "STD Awareness Month",
#   link: "http://www.cdc.gov/std/sam/",
#   description: "Be safe, get tested!",
#   photo_id: nil,
#   display: true,
#   position: 0,
#   created_at: Wed, 01 Apr 2015 20:25:17 UTC +00:00,
#   updated_at: Wed, 01 Apr 2015 20:26:00 UTC +00:00>,
#  #<Observance:0x007f86283e9e90
#   id: 2,
#   start_date: Wed, 01 Apr 2015,
#   name: "National Autism Awareness Month",
#   link: "http://www.autism-society.org/get-involved/national-autism-awareness-month/",
#   description: nil,
#   photo_id: nil,
#   display: true,
#   position: nil,
#   created_at: Wed, 01 Apr 2015 20:27:13 UTC +00:00,
#   updated_at: Wed, 01 Apr 2015 20:27:13 UTC +00:00>,
#  #<Observance:0x007f86283e9d50
#   id: 3,
#   start_date: Wed, 01 Apr 2015,
#   name: "IBS Awareness Month",
#   link: "http://www.aboutibs.org/site/living-with-ibs/ibs-awareness-month/",
#   description: "",
#   photo_id: nil,
#   display: true,
#   position: nil,
#   created_at: Wed, 01 Apr 2015 20:27:40 UTC +00:00,
#   updated_at: Wed, 01 Apr 2015 20:27:40 UTC +00:00>]
# (END)


#  User Data:

[#<User id: 1, email: "teixeira@ayosinformatics.com", first_name: "Douglas", last_name: "Teixeira", is_admin: true, password_digest: "$2a$10$2tY3dYanPCBqCVvKhEubOeVRL.8LFsMVXV8I.BrYxuGY...", session_token: "P7KT7GD0zCUYxEZofppzrw", password_reset_token: nil, password_reset_sent_at: nil, is_active: true, activation_token: "gbZo_kg2NVcd3aqAe0ZeWw", uid: nil, access_token: nil, provider: nil, oauth_token: nil, oauth_expires_at: nil, fb_image_url: nil, display: true, position: nil, title: "System Administrator", string: nil, bio: nil, phone: "(908) 872-0937", work_phone: nil, home_phone: nil, mobile_phone: nil, fax: nil, timezone: "Eastern Time (US & Canada)", created_at: "2015-04-22 14:11:43", updated_at: "2015-06-01 20:43:12", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil>]

# Observance Data:

[#<Observance id: 1, start_date: "2015-04-23", name: "STD Awareness Month", link: "http://www.cdc.gov/std/sam/", description: "Get Tested, Stay Safe!", photo_id: nil, display: true, position: nil, created_at: "2015-04-23 16:00:59", updated_at: "2015-04-23 16:00:59">,
   #<Observance id: 2, start_date: "2015-04-23", name: "National Autism Awareness Month", link: "http://www.autism-society.org/get-involved/national...", description: "Vaccinations have not been proven to cause autism.", photo_id: nil, display: true, position: nil, created_at: "2015-04-23 16:01:38", updated_at: "2015-04-23 16:02:00">, 
   #<Observance id: 3, start_date: "2015-04-23", name: "IBS Awareness Month", link: "http://www.aboutibs.org/site/living-with-ibs/ibs-aw...", description: "It's more common than you think!", photo_id: nil, display: true, position: nil, created_at: "2015-04-23 16:02:35", updated_at: "2015-04-23 16:02:35">]