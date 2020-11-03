class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.string :date
      t.string :time
      t.text :notes
      t.belongs_to :volunteer, null: false, foreign_key: true
      t.belongs_to :administrator, null: false, foreign_key: true
    end
  end
end
