json.array!(@proclamations) do |proclamation|
  json.extract! proclamation, :proclamation
  json.url proclamation_url(proclamation, format: :json)
end
