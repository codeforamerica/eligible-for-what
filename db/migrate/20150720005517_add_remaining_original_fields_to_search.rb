class AddRemainingOriginalFieldsToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :gender, :string
    add_column :searches, :transgender, :boolean
    add_column :searches, :race, :string
    add_column :searches, :age, :string
    add_column :searches, :abuse_verbal_emotional_past_year, :boolean
    add_column :searches, :abuse_physical_past_year, :boolean
    add_column :searches, :abuse_physical_past_month, :boolean
    add_column :searches, :domestic_violence, :string
    add_column :searches, :mental_health, :string
  end
end
