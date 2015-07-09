require './controllers/user_controller.rb'
require './controllers/topic_controller.rb'

class Start
  attr_accessor :user, :topic, :follow
  def initialize
    @user = User_controller.new
    @topic = Topic_controller.new
  end

  @@instance = Start.new

  def self.instance #singleton
    return @@instance
  end
end
