require './models/topic.rb'

class Topic_controller
  def addTopic(name, category)
    topic = Topic.addTopic(name, category)
  end

  def deleteTopic(id)
    result = Topic.deleteTopic(id)
  end

  def followTopic(user_id, topic_id)
    result = Follow.followTopic(user_id,topic_id)
  end

  def popularTopic()
  end

  def popularTopicForGender(gender)
  end
end
