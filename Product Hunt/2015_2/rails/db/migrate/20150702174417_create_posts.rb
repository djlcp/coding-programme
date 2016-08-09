class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.string :category
      t.string :url

      t.timestamps null: false
    end
  end
end
