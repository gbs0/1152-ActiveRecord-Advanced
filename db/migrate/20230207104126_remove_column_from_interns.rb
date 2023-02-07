class RemoveColumnFromInterns < ActiveRecord::Migration[7.0]
  def change
    remove_column :interns, :institution
  end
end