class ArtPiece < ActiveRecord::Base
  belongs_to :user
  attachment :attachment_file, type: :image
end
