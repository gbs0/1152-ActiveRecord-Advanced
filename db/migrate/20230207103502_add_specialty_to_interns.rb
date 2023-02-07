class AddSpecialtyToInterns < ActiveRecord::Migration[7.0]
  def change
    add_column :interns, :specialty, :string
  end
end