require 'test_helper'

class Sca1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sca1 = sca1s(:one)
  end

  test "should get index" do
    get sca1s_url
    assert_response :success
  end

  test "should get new" do
    get new_sca1_url
    assert_response :success
  end

  test "should create sca1" do
    assert_difference('Sca1.count') do
      post sca1s_url, params: { sca1: { description: @sca1.description, image: @sca1.image, title: @sca1.title } }
    end

    assert_redirected_to sca1_url(Sca1.last)
  end

  test "should show sca1" do
    get sca1_url(@sca1)
    assert_response :success
  end

  test "should get edit" do
    get edit_sca1_url(@sca1)
    assert_response :success
  end

  test "should update sca1" do
    patch sca1_url(@sca1), params: { sca1: { description: @sca1.description, image: @sca1.image, title: @sca1.title } }
    assert_redirected_to sca1_url(@sca1)
  end

  test "should destroy sca1" do
    assert_difference('Sca1.count', -1) do
      delete sca1_url(@sca1)
    end

    assert_redirected_to sca1s_url
  end
end
