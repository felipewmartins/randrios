class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :nome
      t.text :descricao
      t.datetime :inicio
      t.datetime :fim
      t.string :fornecedor
      t.integer :vagas
      t.string :local
      t.decimal :valor

      t.timestamps
    end
  end
end
