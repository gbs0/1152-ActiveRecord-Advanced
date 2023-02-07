class CreateInterns < ActiveRecord::Migration[7.0]
  def change
    create_table :interns do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :institution
      t.references :doctor, foreing_key: true, null: false

      t.timestamps
    end
  end
end