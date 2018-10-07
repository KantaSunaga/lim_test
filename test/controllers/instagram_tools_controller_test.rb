require 'test_helper'

class InstagramToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instagram_tool = instagram_tools(:one)
  end

  test "should get index" do
    get instagram_tools_url
    assert_response :success
  end

  test "should get new" do
    get new_instagram_tool_url
    assert_response :success
  end

  test "should create instagram_tool" do
    assert_difference('InstagramTool.count') do
      post instagram_tools_url, params: { instagram_tool: { AgencyName: @instagram_tool.AgencyName, ContractDate: @instagram_tool.ContractDate, CustomerAddress: @instagram_tool.CustomerAddress, CustomerName: @instagram_tool.CustomerName, CustomerPhone: @instagram_tool.CustomerPhone, LoginId: @instagram_tool.LoginId, PassWord: @instagram_tool.PassWord, payment: @instagram_tool.payment } }
    end

    assert_redirected_to instagram_tool_url(InstagramTool.last)
  end

  test "should show instagram_tool" do
    get instagram_tool_url(@instagram_tool)
    assert_response :success
  end

  test "should get edit" do
    get edit_instagram_tool_url(@instagram_tool)
    assert_response :success
  end

  test "should update instagram_tool" do
    patch instagram_tool_url(@instagram_tool), params: { instagram_tool: { AgencyName: @instagram_tool.AgencyName, ContractDate: @instagram_tool.ContractDate, CustomerAddress: @instagram_tool.CustomerAddress, CustomerName: @instagram_tool.CustomerName, CustomerPhone: @instagram_tool.CustomerPhone, LoginId: @instagram_tool.LoginId, PassWord: @instagram_tool.PassWord, payment: @instagram_tool.payment } }
    assert_redirected_to instagram_tool_url(@instagram_tool)
  end

  test "should destroy instagram_tool" do
    assert_difference('InstagramTool.count', -1) do
      delete instagram_tool_url(@instagram_tool)
    end

    assert_redirected_to instagram_tools_url
  end
end
