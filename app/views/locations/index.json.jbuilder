json.locations @locations do |location|
  json.id location.id
  json.name location.name
  json.latitude location.latitude
  json.longitude location.longitude
  json.description location.description
end