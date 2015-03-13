json.array!(@habers) do |haber|
  json.extract! haber, :id, :baslik, :aciklamasi, :resim, :kaynagi
  json.url haber_url(haber, format: :json)
end
