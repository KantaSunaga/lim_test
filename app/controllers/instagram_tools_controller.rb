class InstagramToolsController < ApplicationController
  before_action :set_instagram_tool, only: [:show, :edit, :update, :destroy]


  def index
    @q = InstagramTool.ransack(params[:q])
    @instagram_tools = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def search
    @q = InstagramTool.ransack(params[:q])
    @instagram_tools = @q.result.page(params[:page]).per(10)
    render :template => "instagram_tools/index"
  end

  def show;end

  def new
    @instagram_tool = InstagramTool.new
  end

  def edit;end

  def create
    @instagram_tool = InstagramTool.new(instagram_tool_params)
    if @instagram_tool.save
      # なぜかモデルのメソッドが認識されないから苦渋の選択としてコントローラーに書く
      encryptor = ::ActiveSupport::MessageEncryptor.new(ENV["SECRET_HASH"], cipher: 'aes-256-cbc')
      value = encryptor.encrypt_and_sign(@instagram_tool.id)
      @instagram_tool.update(hash_value: value)
      send_new_apply_mails(@instagram_tool)
      render "layouts/thanks"
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @instagram_tool.update(instagram_tool_params)
        format.html { redirect_to @instagram_tool, notice: 'Instagram tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @instagram_tool }
      else
        format.html { render :edit }
        format.json { render json: @instagram_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @instagram_tool.destroy
    respond_to do |format|
      format.html { redirect_to instagram_tools_url, notice: 'Instagram tool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def search_params
      params.require(:q).permit!
    end

    def set_instagram_tool
      @instagram_tool = InstagramTool.find(params[:id])
    end

    def instagram_tool_params
      params.require(:instagram_tool).permit( :AgencyName,
                                              :LoginId,
                                              :PassWord,
                                              :ContractDate,
                                              :CustomerName,
                                              :CustomerAddress,
                                              :CustomerPhone,
                                              :payment,
                                              :issue_flag,
                                              :email)
    end
end
