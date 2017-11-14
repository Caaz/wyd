class AddInfoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :username, :string, unique: true, null: false
    add_column :users, :bio, :text
    add_attachment :users, :avatar
  end
end
