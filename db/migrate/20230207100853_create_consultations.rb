class CreateConsultations < ActiveRecord::Migration[7.0]
  def change
    create_table :consultations do |c|
      c.datetime :date
      c.references :patient, foreing_key: true, null: false
      c.references :doctor, foreing_key: true, null: false
      
      c.timestamps
    end
  end
end