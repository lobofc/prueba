class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :video
      t.string :contenido
      t.string :category

      t.timestamps
    end
  end
end
