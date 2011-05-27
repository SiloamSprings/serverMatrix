class Machine < ActiveRecord::Base
  belongs_to :mtype 

  def has_parent?
    # a machine should have a parent if it's 
    # mtype_id is 3 (guest)
    mtype_id == 3
  end

  def parent
    if has_parent?
      Machine.find(self.parent_key)
    else
      "Has no parent!"
    end
  end

  def has_children?
    # IN THE GHETTTOOOOO (in the ghetttooo!)
    # if mtype_id == 2, machine potentially has children
    # look at a var = where(:parent_key => self.id) solution
    # or maybe Machine.where(:parent_key => self.id).any?
    # var.any? # => true / false if array is empty 
    if (self.mtype_id) == 2
      Machine.find_by_sql("SELECT * FROM MACHINES WHERE parent_key = #{self.id}")[0] != nil ? true : false
    else
      false
    end
  end

  def children
    # where(:parent_key => self.id)
    Machine.find_by_sql("SELECT * FROM MACHINES WHERE parent_key = #{self.id}")
  end
end
