class RemoveApprovedFromComments < ActiveRecord::Migration
  def self.up
    remove_column :comments, :approved
  end

  def self.down
    add_column :comments, :approved, :boolean
  end
end
