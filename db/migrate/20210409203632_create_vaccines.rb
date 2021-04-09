class CreateVaccines < ActiveRecord::Migration[6.1]
  def change
    create_table :vaccines do |t|
      t.integer :age

      t.timestamps
    end
  end
end
