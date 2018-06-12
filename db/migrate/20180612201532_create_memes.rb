class CreateMemes < ActiveRecord::Migration[5.1]
  def change
    create_table :memes do |t|
      t.string :img_url
      t.integer :upvotes_count, default: 0
      t.integer :downvotes_count, default: 0
      t.boolean :featured, default: false

      t.timestamps
    end
  end
end
