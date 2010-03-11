class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string   :title
      t.string   :author
      t.string   :permalink

      t.text     :content

      t.datetime :published_at

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
