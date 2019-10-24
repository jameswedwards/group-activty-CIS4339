class CreateSchoolClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :school_classes do |t|
      t.string :name
      t.integer :section_number

      t.timestamps
    end
  end
end
