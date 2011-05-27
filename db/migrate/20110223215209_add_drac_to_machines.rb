class AddDracToMachines < ActiveRecord::Migration
  def self.up
    add_column :machines, :drac, :string
  end

  def self.down
    remove_column :machines, :drac
  end
end
