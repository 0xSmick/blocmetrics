json.array!(@web_properties) do |web_property|
  json.extract! web_property, :id, :name, :url, :user_id
  json.url web_property_url(web_property, format: :json)
end
