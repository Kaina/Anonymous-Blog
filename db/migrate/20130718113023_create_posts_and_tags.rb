class CreatePostsAndTags < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title, :null => false
      t.string :post_author
      t.text :post_body, :null => false
      t.timestamps
    end

    create_table :tags do |t|
      t.string :tag_name
    end

    create_table :posts_tags do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
