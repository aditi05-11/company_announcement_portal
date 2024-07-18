class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.date :date_of_birth
      t.string :email

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
