class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.integer :office_number
      t.string :building

      t.timestamps
    end
  end
end
