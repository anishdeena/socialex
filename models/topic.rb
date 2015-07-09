require './data_manager/DM.rb'

class Topic
  attr_accessor :id, :category, :name, :topicDM

  def initialize
  end
  def self.addTopic(name, category)
    topic = DM.instance.addTopic(name, category)
    return topic
  end

  def self.deleteTopic(id)
    result = DM.instance.deleteTopic(id)
    return result
  end

end
