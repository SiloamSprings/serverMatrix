class CreateMtypes < ActiveRecord::Migration
  def self.up
    create_table :mtypes do |t|
      t.string :type_name

      t.timestamps
    end

    # need mtypes standalone, host, and guest (1, 2, 3)
  end

  def self.down
    drop_table :mtypes
  end
end
