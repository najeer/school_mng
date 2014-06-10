class AddGenderToAddimitions < ActiveRecord::Migration
  def change
    add_column :addimitions, :gender, :string
  end
end
