class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.date :date
      t.time :time
      t.string :patient_name
      t.integer :patient_age
      t.text :patient_info
      t.text :notes
      t.belongs_to :volunteer, null: false, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end
