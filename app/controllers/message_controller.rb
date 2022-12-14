# frozen_string_literal: true

class MessageController < ApplicationController
  def index
    @message = Message.order('RANDOM()').first
    render json: @message.message
  end
end
