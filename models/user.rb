require './data_manager/DM.rb'

class User
  attr_accessor :id, :gender, :name, :userDM

  def initialize
  end
  def self.addUser(name, gender)
    user = DM.instance.addUser(name, gender)
    return user
  end

  def self.deleteUser(id)
    result = DM.instance.deleteUser(id)
    return result
  end


end
