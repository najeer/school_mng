class AddparrentemailidToAddimitions < ActiveRecord::Migration
  def up
  	add_column :addimitions, :parrent_emailid, :string
  end

  def down
  end
end
