class CreateSorteios < ActiveRecord::Migration[5.2]
  def change
    create_table :sorteios do |t|
      t.references :grupo, foreign_key: true
      t.references :remetente, index: true, foreign_key: {to_table: :users}
      t.references :destinatario, index: true, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
