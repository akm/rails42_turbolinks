json.array!(@people) do |person|
  json.extract! person, :id, :name, :email, :prefecture, :tel
  json.url person_url(person, format: :json)
end
