json.array!(@art_pieces) do |art_piece|
  json.extract! art_piece, :id, :discipline, :title, :date_of, :dimensions, :technique, :description, :quantity, :observations, :exhibit_text, :artist_statement
  json.url art_piece_url(art_piece, format: :json)
end
