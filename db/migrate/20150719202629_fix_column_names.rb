class FixColumnNames < ActiveRecord::Migration
  def change
    rename_column :searches, :veterans, :veteran
    rename_column :searches, :city, :address_city
  end
end
