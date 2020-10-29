class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :password
      t.boolean :approved
      t.string :profile_image
    

      t.timestamps
    end
  end
end
