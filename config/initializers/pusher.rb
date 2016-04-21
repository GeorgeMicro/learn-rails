# config/initializers/pusher.rb
require 'pusher'

Pusher.app_id = '199430'
Pusher.key = '595ba7cd36689fe387c9'
Pusher.secret = '115f4021b814b5e1d29f'
Pusher.logger = Rails.logger
Pusher.encrypted = true
