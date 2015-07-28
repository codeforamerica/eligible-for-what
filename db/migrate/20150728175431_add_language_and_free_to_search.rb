class AddLanguageAndFreeToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :language, :string
    add_column :searches, :free, :boolean
  end
end
