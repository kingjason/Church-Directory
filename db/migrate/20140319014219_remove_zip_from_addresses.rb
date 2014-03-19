class RemoveZipFromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :zip, :string
  end
end
