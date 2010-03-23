class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :post_id
      t.boolean :approved
      t.string :referrer
      t.string :user_agent
      t.string :user_ip
      t.string :url
      t.string :email
      t.string :author
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
