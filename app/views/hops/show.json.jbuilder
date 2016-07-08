json.hop do
  json.hop_id @hop.id
  json.name @hop.name
  json.description @hop.description
  json.alpha_acid @hop.alpha_acid
  json.beta_acid @hop.beta_acid
  json.country_of_origin @hop.country_of_origin
end

json.comments @comments do |comment|
  json.comment_id comment.id
  json.body comment.body
  json.comment_user comment.user
end