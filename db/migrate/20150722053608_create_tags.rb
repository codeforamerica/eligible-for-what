class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :area
      t.string :category
      t.string :name

      t.timestamps null: false
    end
  end
end
