require './data_manager/topicDM.rb'

class Topic
  attr_accessor :id, :category, :name, :topicDM

  def initialize
    @topicDM = TopicDM.new
  end
  def self.addTopic(name, category)
    topic = TopicDM.instance.addTopic(name, category)
    return topic
  end

  def self.deleteTopic(id)
    result = TopicDM.instance.deleteTopic(id)
    return result
  end

  def self.followTopic(user_id, topic_id)
    result = TopicDM.followTopic(user_id, topic_id)
  end

end
