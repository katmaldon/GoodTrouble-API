class CreateUserResources < ActiveRecord::Migration[6.0]
  def change
    create_table :user_resources do |t|
      t.string :user_id
      t.string :resource_id
      t.boolean :highlight

      t.timestamps
    end
  end
end
