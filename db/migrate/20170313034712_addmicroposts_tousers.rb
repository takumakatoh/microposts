class AddmicropostsTousers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :string
    add_column :users, :birthplace, :string
  end
end
