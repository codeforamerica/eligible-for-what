class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :organization
      t.boolean :veteran

      t.timestamps null: false
    end
  end
end
