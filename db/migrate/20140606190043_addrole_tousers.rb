class AddroleTousers < ActiveRecord::Migration
  def up
  	add_column :users, :role_id,    :string
    add_column :users, :password_confirmation, :string
    add_column :users, :password, :string
    add_column :users, :batch,   :integer
  end

  def down
  end
end
