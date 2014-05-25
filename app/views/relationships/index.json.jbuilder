json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :personne_id, :scene_id
  json.url relationship_url(relationship, format: :json)
end
