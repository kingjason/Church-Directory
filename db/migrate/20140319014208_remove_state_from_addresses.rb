class RemoveStateFromAddresses < ActiveRecord::Migration
  def change
    remove_column :addresses, :state, :string
  end
end
