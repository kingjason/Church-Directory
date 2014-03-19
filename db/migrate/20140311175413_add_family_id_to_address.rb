class AddFamilyIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :family_id, :integer
  end
end
