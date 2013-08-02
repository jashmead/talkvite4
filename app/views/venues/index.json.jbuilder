json.array!(@venues) do |venue|
  json.extract! venue, :venue_type, :location_id
  json.url venue_url(venue, format: :json)
end
