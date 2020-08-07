class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :age
      t.string :location
      t.string :interests

      t.timestamps
    end
  end
end