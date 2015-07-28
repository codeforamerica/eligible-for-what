class ChangeRaceToAffiliation < ActiveRecord::Migration
  def change
    rename_column :searches, :race, :affiliation
  end
end
