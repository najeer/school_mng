class CreateAddimitions < ActiveRecord::Migration
  def change
    create_table :addimitions do |t|
    	t.string :student_name
    	t.string :father_name
    	t.string :class_type
    	t.boolean :gender
    	t.date :dob
    	t.string :phone
    	t.string :adress
    	t.has_attached_file :photo

      t.timestamps
    end
  end
end
