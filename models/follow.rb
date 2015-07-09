require './data_manager/DM.rb'

class Follow
  attr_accessor :user_id,:topic_id

  def initialize
  end

  def self.followTopic(user_id, topic_id)
    result = DM.instance.followTopic(user_id, topic_id)
    return result
  end



end
