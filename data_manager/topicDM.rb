class TopicDM
  attr_accessor :topic_hash

  def initialize
    @topic_hash = {}
  end

  @@instance = TopicDM.new

  def self.instance #singleton
    return @@instance
  end


  def addTopic(name, category)
    topic = Topic.new
    topic.id = topic.object_id
    topic.name = name
    topic.category = category
    return topic
    @topic_hash[topic.id] = topic
  end

  def deleteTopic(id)
    @topic_hash.delete(id)
    return true
  end
end
