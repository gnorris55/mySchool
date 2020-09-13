require 'test_helper'

class OrganizersControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get organizers_home_url
    assert_response :success
  end
end
