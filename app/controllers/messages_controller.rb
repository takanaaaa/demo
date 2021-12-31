class MessagesController < ApplicationController
  before_action :set_group

  def create
    @message = @group.messages.create(message_params)
    @messages = @group.messages.includes(:user)
    unless @message.save
      render :index, notice: "メッセージを入力してください"
    end
  end

  def index
    @message = Message.new
    @messages = @group.messages.includes(:user)
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
