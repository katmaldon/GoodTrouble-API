class CreateUserEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_events do |t|
      t.string :user_id
      t.string :event_id
      t.boolean :favorite
      t.boolean :going

      t.timestamps
    end
  end
end
