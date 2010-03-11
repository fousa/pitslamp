class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string  :menu_title
      t.string  :title
      t.string  :permalink

      t.text    :content

      t.integer :position

      t.boolean :handled_by_controller
      t.boolean :home_page
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
