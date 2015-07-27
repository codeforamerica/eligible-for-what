class AddDomesticViolenceHotlineToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :domestic_violence_hotline, :boolean
  end
end
