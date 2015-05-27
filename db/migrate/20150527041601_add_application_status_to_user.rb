class AddApplicationStatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :application_status, :string
  end
end
