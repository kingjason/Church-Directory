class RemoveLine2FromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :line2, :string
  end
end
