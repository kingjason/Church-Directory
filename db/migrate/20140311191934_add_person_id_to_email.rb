class AddPersonIdToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :person_id, :integer
  end
end
