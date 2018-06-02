class AddAvtarToPrincipals < ActiveRecord::Migration[5.2]
  def change
    add_column :principals, :avtar, :string
  end
end
