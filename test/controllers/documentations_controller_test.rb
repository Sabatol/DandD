require "test_helper"

class DocumentationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documentations_index_url
    assert_response :success
  end

  test "should get show" do
    get documentations_show_url
    assert_response :success
  end

  test "should get new" do
    get documentations_new_url
    assert_response :success
  end

  test "should get create" do
    get documentations_create_url
    assert_response :success
  end

  test "should get edit" do
    get documentations_edit_url
    assert_response :success
  end

  test "should get update" do
    get documentations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get documentations_destroy_url
    assert_response :success
  end
end
