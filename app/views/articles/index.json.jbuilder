json.array!(@articles) do |article|
  json.extract! article, :id, :title, :body, :tags
  json.url article_url(article, format: :json)
end
