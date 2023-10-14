require "application_system_test_case"

class ServiceManagementsTest < ApplicationSystemTestCase
  setup do
    @service_management = service_managements(:one)
  end

  test "visiting the index" do
    visit service_managements_url
    assert_selector "h1", text: "Service managements"
  end

  test "should create service management" do
    visit service_managements_url
    click_on "New service management"

    fill_in "Client", with: @service_management.client_id
    fill_in "Contact", with: @service_management.contact_id
    fill_in "Repair", with: @service_management.repair_id
    fill_in "Service", with: @service_management.service_id
    fill_in "Vehiculo", with: @service_management.vehiculo_id
    click_on "Create Service management"

    assert_text "Service management was successfully created"
    click_on "Back"
  end

  test "should update Service management" do
    visit service_management_url(@service_management)
    click_on "Edit this service management", match: :first

    fill_in "Client", with: @service_management.client_id
    fill_in "Contact", with: @service_management.contact_id
    fill_in "Repair", with: @service_management.repair_id
    fill_in "Service", with: @service_management.service_id
    fill_in "Vehiculo", with: @service_management.vehiculo_id
    click_on "Update Service management"

    assert_text "Service management was successfully updated"
    click_on "Back"
  end

  test "should destroy Service management" do
    visit service_management_url(@service_management)
    click_on "Destroy this service management", match: :first

    assert_text "Service management was successfully destroyed"
  end
end
