class AddTagAndPropertyLookupTables < ActiveRecord::Migration
  def change
    create_table :services_tags, :id => false do |t|
      t.references :service, :tag
    end

    add_index :services_tags, [:service_id, :tag_id]

    create_table :services_properties, :id => false do |t|
      t.references :service, :property
    end

    add_index :services_properties, [:service_id, :property_id]
  end
end
