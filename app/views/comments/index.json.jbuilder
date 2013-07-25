json.array!(@comments) do |comment|
  json.extract! comment, :post_id, :content, :from
  json.url comment_url(comment, format: :json)
end
