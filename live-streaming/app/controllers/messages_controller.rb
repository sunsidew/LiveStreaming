require 'json'
class MessagesController < ApplicationController
  def index
  end

  def create
  	$redis.publish('new_message', params.to_json)
  	render nothing: true
  end
end
