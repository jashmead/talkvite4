json.array!(@talks) do |talk|
  json.extract! talk, :content, :user_id
  json.url talk_url(talk, format: :json)
end
