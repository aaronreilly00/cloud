class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :vaccine_amount
      t.string :vaccine_type
      t.string :vaccine_location

      t.timestamps
    end
  end
end
