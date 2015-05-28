class AddAttachmentFileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attachment_file_id, :string
  end
end
