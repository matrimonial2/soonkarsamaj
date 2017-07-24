class AddImageToRegisters < ActiveRecord::Migration[5.0]
  def change
    add_column :registers, :image, :string
  end
end
