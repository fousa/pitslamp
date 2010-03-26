class RemoveHandledByControllerFromPages < ActiveRecord::Migration
  def self.up
    remove_column :pages, :handled_by_controller
  end

  def self.down
    add_column :pages, :handled_by_controller, :boolean
  end
end
