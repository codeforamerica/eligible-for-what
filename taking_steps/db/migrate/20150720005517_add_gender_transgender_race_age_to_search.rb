class AddGenderTransgenderRaceAgeToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :gender, :string
    add_column :searches, :transgender, :boolean
    add_column :searches, :race, :string
    add_column :searches, :age, :string
  end
end
