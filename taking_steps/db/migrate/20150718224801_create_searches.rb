class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :city
      t.boolean :veterans

      t.timestamps null: false
    end
  end
end
