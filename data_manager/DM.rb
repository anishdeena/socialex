class DM
  attr_accessor :topic_hash, :user_hash, :follow_hash

  def initialize
    @user_hash = {}
    @topic_hash = {}
    @follow_hash = {}
  end

  @@instance = DM.new

  def self.instance #singleton
    return @@instance
  end

  def addUser(name, gender)
    user = User.new
    user.id = user.object_id
    user.name = name
    user.gender = gender
    @user_hash[user.id] = user
    return user
  end

  def deleteUser(id)
    @user_hash.delete(id)
    return true
  end

  def addTopic(name, category)
    topic = Topic.new
    topic.id = topic.object_id
    topic.name = name
    topic.category = category
    @topic_hash[topic.id] = topic
    return topic
  end

  def deleteTopic(id)
    @topic_hash.delete(id)
    return true
  end

  def followTopic(user_id, topic_id)
    follow = Follow.new
    follow.id = follow.object_id
    follow.user_id = user_id
    follow.topic_id = topic_id
    @follow_hash[follow.id] = follow
    return follow
  end
end
