class ArtPiece < ActiveRecord::Base
  belongs_to :user
  attachment :attachment_file
end
