class CreateGrupos < ActiveRecord::Migration[5.2]
  def change
    create_table :grupos do |t|
      t.string :nome_grupo

      t.timestamps
    end
  end
end
