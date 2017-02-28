require 'test_helper'

class InfosControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get infos_profile_url
    assert_response :success
  end

  test "should get contact" do
    get infos_contact_url
    assert_response :success
  end

end
