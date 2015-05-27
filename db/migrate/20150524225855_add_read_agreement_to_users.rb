class AddReadAgreementToUsers < ActiveRecord::Migration
  def change
    add_column :users, :read_agreement, :boolean
  end
end
