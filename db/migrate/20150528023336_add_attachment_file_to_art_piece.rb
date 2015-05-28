class AddAttachmentFileToArtPiece < ActiveRecord::Migration
  def change
    add_column :art_pieces, :attachment_file_id, :string
  end
end
