class CreateMachines < ActiveRecord::Migration
  def self.up
    create_table :machines do |t|
      t.string  :dns
      t.string  :ip
      t.text    :description
      t.integer :mtype_id
      t.integer :parent_key      
      t.timestamps
    end
  end

  def self.down
    drop_table :machines
  end
end
