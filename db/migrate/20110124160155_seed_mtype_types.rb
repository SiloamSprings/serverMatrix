class SeedMtypeTypes < ActiveRecord::Migration
  def self.up
    Mtype.new(:id => 1, :type_name => "Standalone").save
    Mtype.new(:id => 2, :type_name => "Host").save
    Mtype.new(:id => 3, :type_name => "Guest").save
  end

  def self.down
  end
end
