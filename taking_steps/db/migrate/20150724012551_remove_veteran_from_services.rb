class RemoveVeteranFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :veteran, :boolean
  end
end
