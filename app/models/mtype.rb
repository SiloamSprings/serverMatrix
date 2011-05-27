class Mtype < ActiveRecord::Base
  has_many :machines
  default_scope order(:id) 

  def self.types
    select("DISTINCT(type_name), id").map do |t|
      [ t.type_name , t.id ]
    end 
  end
end
