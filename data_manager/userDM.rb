class UserDM
  attr_accessor :user_hash

  def initialize
    @user_hash = {}
  end

  @@instance = UserDM.new

  def self.instance #singleton
    return @@instance
  end

  def addUser(name, gender)
    user = User.new
    user.id = user.object_id
    user.name = name
    user.gender = gender
    return user
    @user_hash[user.id] = user
  end

  def deleteUser(id)
    @user_hash.delete(id)
    return true
  end
end
