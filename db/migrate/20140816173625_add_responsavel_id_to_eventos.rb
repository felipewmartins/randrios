class AddResponsavelIdToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :responsavel_id, :integer
  end
end
