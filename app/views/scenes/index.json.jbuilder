json.array!(@scenes) do |scene|
  json.extract! scene, :id, :recit, :lieu, :periode, :id_anecdote
  json.url scene_url(scene, format: :json)
end
