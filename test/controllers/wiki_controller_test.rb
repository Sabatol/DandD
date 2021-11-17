require "test_helper"

class WikiControllerTest < ActionDispatch::IntegrationTest
  test "should get weapons" do
    get wiki_weapons_url
    assert_response :success
  end

  test "should get skills" do
    get wiki_skills_url
    assert_response :success
  end

  test "should get maps" do
    get wiki_maps_url
    assert_response :success
  end
end
