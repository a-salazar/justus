json.array!(@walls) do |wall|
  json.extract! wall, :id, :title, :description
  json.url wall_url(wall, format: :json)
end
