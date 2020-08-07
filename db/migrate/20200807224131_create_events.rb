class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :image
      t.date :date
      t.time :time
      t.string :location
      t.string :url

      t.timestamps
    end
  end
end
