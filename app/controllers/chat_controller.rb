class ChatController < WebsocketRails::BaseController
  def initialize_session
    # perform application setup here
    controller_store[:message_count] = 0
  end
  def new_message
    Rails.logger.debug 'New message'
  end
  def output
    Rails.logger.debug 'WebsocketRails is working!'
  end
  def delete_user
    Rails.logger.debug 'User disconnected'
  end
  def connection_closed
    Rails.logger.debug 'connection_closed'
  end
end
