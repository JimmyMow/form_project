class AddStuffToUser < ActiveRecord::Migration
  def change
    add_column :users, :birthday, :string
    add_column :users, :pic, :string
  end
end
