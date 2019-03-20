require 'test_helper'

class BundlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bundl = bundls(:one)
  end

  test "should get index" do
    get bundls_url
    assert_response :success
  end

  test "should get new" do
    get new_bundl_url
    assert_response :success
  end

  test "should create bundl" do
    assert_difference('Bundl.count') do
      post bundls_url, params: { bundl: { color: @bundl.color, description: @bundl.description, title: @bundl.title } }
    end

    assert_redirected_to bundl_url(Bundl.last)
  end

  test "should show bundl" do
    get bundl_url(@bundl)
    assert_response :success
  end

  test "should get edit" do
    get edit_bundl_url(@bundl)
    assert_response :success
  end

  test "should update bundl" do
    patch bundl_url(@bundl), params: { bundl: { color: @bundl.color, description: @bundl.description, title: @bundl.title } }
    assert_redirected_to bundl_url(@bundl)
  end

  test "should destroy bundl" do
    assert_difference('Bundl.count', -1) do
      delete bundl_url(@bundl)
    end

    assert_redirected_to bundls_url
  end
end
