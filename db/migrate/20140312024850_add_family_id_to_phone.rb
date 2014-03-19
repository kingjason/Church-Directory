class AddFamilyIdToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :family_id, :integer
  end
end
