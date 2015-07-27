class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :category
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
