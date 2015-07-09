require './models/user.rb'

class User_controller
  def addUser(name, gender)
    user = User.addUser(name, gender)
  end

  def deleteUser(id)
    result = User.deleteUser(id)
  end
end
