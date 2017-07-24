class CreateRegisters < ActiveRecord::Migration[5.0]
  def change
    create_table :registers do |t|
      t.string :First_name
      t.string :Last_name
      t.integer :Age
      t.string :Address
      t.string :Education
      t.string :Occupation
      t.string :Photo

      t.timestamps
    end
  end
end
