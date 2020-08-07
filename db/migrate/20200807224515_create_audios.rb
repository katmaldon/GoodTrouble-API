class CreateAudios < ActiveRecord::Migration[6.0]
  def change
    create_table :audios do |t|
      t.string :title
      t.string :content
      t.string :embed_url

      t.timestamps
    end
  end
end
