class CreateUserSubscriptions < ActiveRecord::Migration
  def change
    create_table :user_subscriptions do |t|
      t.date :birth_date
      t.string :nationality
      t.text :address
      t.integer :phone
      t.string :institution
      t.text :about
      t.string :status
      t.belongs_to :user

      t.timestamps
    end
    add_index :user_subscriptions, :user_id
  end
end
