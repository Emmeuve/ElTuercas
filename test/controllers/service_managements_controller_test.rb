require "test_helper"

class ServiceManagementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_management = service_managements(:one)
  end

  test "should get index" do
    get service_managements_url
    assert_response :success
  end

  test "should get new" do
    get new_service_management_url
    assert_response :success
  end

  test "should create service_management" do
    assert_difference("ServiceManagement.count") do
      post service_managements_url, params: { service_management: { client_id: @service_management.client_id, contact_id: @service_management.contact_id, repair_id: @service_management.repair_id, service_id: @service_management.service_id, vehiculo_id: @service_management.vehiculo_id } }
    end

    assert_redirected_to service_management_url(ServiceManagement.last)
  end

  test "should show service_management" do
    get service_management_url(@service_management)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_management_url(@service_management)
    assert_response :success
  end

  test "should update service_management" do
    patch service_management_url(@service_management), params: { service_management: { client_id: @service_management.client_id, contact_id: @service_management.contact_id, repair_id: @service_management.repair_id, service_id: @service_management.service_id, vehiculo_id: @service_management.vehiculo_id } }
    assert_redirected_to service_management_url(@service_management)
  end

  test "should destroy service_management" do
    assert_difference("ServiceManagement.count", -1) do
      delete service_management_url(@service_management)
    end

    assert_redirected_to service_managements_url
  end
end
