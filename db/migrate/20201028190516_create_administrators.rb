class CreateAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :administrators do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :password
      t.string :department
      t.string :position
      t.string :profile_image

      t.timestamps
    end
  end
end
