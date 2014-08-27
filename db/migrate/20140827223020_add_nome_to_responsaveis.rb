class AddNomeToResponsaveis < ActiveRecord::Migration
  def change
  	add_column :responsaveis, :nome, :string
  end
end
