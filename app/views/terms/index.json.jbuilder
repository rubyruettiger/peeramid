json.array!(@terms) do |term|
  json.extract! term, :id, :name, :content, :link
  json.url term_url(term, format: :json)
end
