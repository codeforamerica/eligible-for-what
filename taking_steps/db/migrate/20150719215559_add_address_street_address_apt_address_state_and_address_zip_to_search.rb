class AddAddressStreetAddressAptAddressStateAndAddressZipToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :address_street, :string
    add_column :searches, :address_apt, :string
    add_column :searches, :address_state, :string
    add_column :searches, :address_zip, :integer
  end
end
