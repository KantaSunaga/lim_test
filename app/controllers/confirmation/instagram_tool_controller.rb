class Confirmation::InstagramToolController < ApplicationController

  def show
    redirect_to_root
    @instagram_tool = get_instagram_tool(params[:id])
  end

  def update
    @instagram_tool = InstagramTool.find(params[:id])
    @instagram_tool.update(issue_flag: true)
    send_created_mails(@instagram_tool)
    redirect_to root_path
  end

  private
    def exist_id?
      !InstagramTool.find_by(hash_value: params[:id], issue_flag: false)
    end

    def redirect_to_root
      redirect_to root_path if exist_id?
    end

end
