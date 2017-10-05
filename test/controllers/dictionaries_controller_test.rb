require 'test_helper'

class DictionariesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dictionaries_new_url
    assert_response :success
  end

  test "should get create" do
    get dictionaries_create_url
    assert_response :success
  end

  test "should get destroy" do
    get dictionaries_destroy_url
    assert_response :success
  end

end
