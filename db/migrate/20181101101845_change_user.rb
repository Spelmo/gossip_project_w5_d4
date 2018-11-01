class ChangeUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password, :string
    remove_column :users, :bio, :text
  end
end
