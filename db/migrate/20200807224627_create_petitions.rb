class CreatePetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :petitions do |t|
      t.string :cause
      t.string :description
      t.string :to
      t.string :url
      t.boolean :signed

      t.timestamps
    end
  end
end
