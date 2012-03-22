class AddAuthorisedToRequests < ActiveRecord::Migration
  def self.up
    add_column :requests, :authorised, :boolean
  end

  def self.down
    remove_column :requests, :authorised
  end
end
