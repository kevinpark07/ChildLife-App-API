class CreateApiV1Volunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_volunteers do |t|
      t.string :name
      t.number :age
      t.string :email
      t.boolean :approved
      t.string :profile_image
      t.interview :belongs_to
      t.date :belongs_to

      t.timestamps
    end
  end
end
