class CreateClassAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :class_assignments do |t|
      t.string :assignment_name
      t.date :due_date
      t.float :points
      t.references :school_classes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
