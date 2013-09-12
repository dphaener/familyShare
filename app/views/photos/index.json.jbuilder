json.array!(@photos) do |photo|
  json.extract! photo, :file_name, :file_path, :caption
  json.url photo_url(photo, format: :json)
end
