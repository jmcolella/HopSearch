json.hop do
  json.name @hop.name
  json.description @hop.description
  json.alpha_acid @hop.alpha_acid
  json.beta_acid @hop.beta_acid
  json.country_of_origin @hop.country_of_origin
end

json.comments @comments do |comment|
  json.body comment.body
end