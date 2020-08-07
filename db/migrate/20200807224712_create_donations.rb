class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :organization
      t.string :description
      t.string :url
      t.boolean :donated

      t.timestamps
    end
  end
end
