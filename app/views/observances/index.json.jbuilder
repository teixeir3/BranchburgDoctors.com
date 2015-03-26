json.array!(@observances) do |observance|
  json.extract! observance, :id, :start_date, :name, :link, :description, :photo_id
  json.url observance_url(observance, format: :json)
end
