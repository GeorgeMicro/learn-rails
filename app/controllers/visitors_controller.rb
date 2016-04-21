class VisitorsController < ApplicationController

  def new
    @owner = Owner.new

    Pusher.trigger('test_channel', 'new_request', {message: 'This is Yuxuan\'s rails' })
    Rails.logger.debug('Message Sent')
    self.listen
  end

  def listen
    require 'pusher-client'
    options = { secure: true }
    socket = PusherClient::Socket.new('595ba7cd36689fe387c9', options)

    # Subscribe to two channels
    socket.subscribe('test1_channel')

    # Bind to a channel event (can only occur on channel1)
    socket['test1_channel'].bind('new_request') do |data|
      puts data
    end

    socket.connect
  end
end
