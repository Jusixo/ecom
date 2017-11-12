require 'test_helper'

class EshopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eshop = eshops(:one)
  end

  test "should get index" do
    get eshops_url
    assert_response :success
  end

  test "should get new" do
    get new_eshop_url
    assert_response :success
  end

  test "should create eshop" do
    assert_difference('Eshop.count') do
      post eshops_url, params: { eshop: {  } }
    end

    assert_redirected_to eshop_url(Eshop.last)
  end

  test "should show eshop" do
    get eshop_url(@eshop)
    assert_response :success
  end

  test "should get edit" do
    get edit_eshop_url(@eshop)
    assert_response :success
  end

  test "should update eshop" do
    patch eshop_url(@eshop), params: { eshop: {  } }
    assert_redirected_to eshop_url(@eshop)
  end

  test "should destroy eshop" do
    assert_difference('Eshop.count', -1) do
      delete eshop_url(@eshop)
    end

    assert_redirected_to eshops_url
  end
end
