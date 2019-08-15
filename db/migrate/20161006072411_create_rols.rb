class CreateRols < ActiveRecord::Migration[5.0]
  def change
    create_table :rols do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
