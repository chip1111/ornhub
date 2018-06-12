class CreateDownvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :downvotes do |t|
      t.integer :meme_id

      t.timestamps
    end
  end
end
