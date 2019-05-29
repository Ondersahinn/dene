json.extract! projeler, :id, :baslik, :konu, :aciklama, :tarih, :created_at, :updated_at
json.url projeler_url(projeler, format: :json)
