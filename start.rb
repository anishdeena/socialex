require './controllers/user_controller.rb'
require './controllers/topic_controller.rb'

class Start
  attr_accessor :user, :topic, :follow
  def initialize(i)
    @user = User_controller.new
    @topic = Topic_controller.new

  end
end
