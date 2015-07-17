json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :location, :organization, :veteran
  json.url service_url(service, format: :json)
end
