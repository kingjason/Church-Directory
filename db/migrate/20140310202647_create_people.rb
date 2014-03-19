class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fist_name
      t.string :last_name
      t.integer :family_id
      t.integer :adult
      t.integer :phone_id
      t.integer :email_id

      t.timestamps
    end
  end
end
