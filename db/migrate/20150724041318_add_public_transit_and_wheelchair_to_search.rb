class AddPublicTransitAndWheelchairToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :public_transit, :boolean
    add_column :searches, :wheelchair, :boolean
  end
end
