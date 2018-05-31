class AddPrincipalReferenceToSchools < ActiveRecord::Migration[5.2]
  def change
    add_reference :schools, :principal, foreign_key: true
  end
end
