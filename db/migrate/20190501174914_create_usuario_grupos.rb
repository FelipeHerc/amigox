class CreateUsuarioGrupos < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_grupos do |t|
      t.references :user, foreign_key: true
      t.references :grupo, foreign_key: true

      t.timestamps
    end
  end
end
