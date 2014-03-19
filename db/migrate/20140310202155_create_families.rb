class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.integer :address_id
      t.integer :primary_phone_id

      t.timestamps
    end
  end
end
