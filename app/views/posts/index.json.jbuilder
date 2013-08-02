json.array!(@posts) do |post|
  json.extract! post, :talk_id, :user_id, :post_type, :content
  json.url post_url(post, format: :json)
end
