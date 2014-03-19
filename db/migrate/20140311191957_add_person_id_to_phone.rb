class AddPersonIdToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :person_id, :integer
  end
end
