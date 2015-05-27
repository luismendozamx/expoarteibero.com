class CreateArtPieces < ActiveRecord::Migration
  def change
    create_table :art_pieces do |t|
      t.string :discipline
      t.string :title
      t.date :date_of
      t.string :dimensions
      t.string :technique
      t.string :description
      t.integer :quantity
      t.text :observations
      t.text :exhibit_text
      t.text :artist_statement
      t.belongs_to :user

      t.timestamps
    end
  end
end
