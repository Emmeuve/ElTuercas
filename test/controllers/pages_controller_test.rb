require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get nosotros" do
    get pages_nosotros_url
    assert_response :success
  end

  test "should get servicios" do
    get pages_servicios_url
    assert_response :success
  end

  test "should get contacto" do
    get pages_contacto_url
    assert_response :success
  end
end
