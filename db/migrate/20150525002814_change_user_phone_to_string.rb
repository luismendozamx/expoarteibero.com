class ChangeUserPhoneToString < ActiveRecord::Migration
  def change
    change_column :user_subscriptions, :phone, :string
  end
end
