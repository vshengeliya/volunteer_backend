require 'test_helper'

class MyAttendancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_attendances_index_url
    assert_response :success
  end

  test "should get show" do
    get my_attendances_show_url
    assert_response :success
  end

  test "should get create" do
    get my_attendances_create_url
    assert_response :success
  end

  test "should get delete" do
    get my_attendances_delete_url
    assert_response :success
  end

end
