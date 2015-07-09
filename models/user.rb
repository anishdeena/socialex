require './data_manager/userDM.rb'

class User
  attr_accessor :id, :gender, :name, :userDM

  def initialize
    @userDM = UserDM.new
  end
  def self.addUser(name, gender)
    user = UserDM.instance.addUser(name, gender)
    return user
  end

  def self.deleteUser(id)
    result = UserDM.instance.deleteUser(id)
    return result
  end


end
