require 'test_helper'

class FirstNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_name = first_names(:one)
  end

  test "should get index" do
    get first_names_url
    assert_response :success
  end

  test "should get new" do
    get new_first_name_url
    assert_response :success
  end

  test "should create first_name" do
    assert_difference('FirstName.count') do
      post first_names_url, params: { first_name: { agrees_waiver: @first_name.agrees_waiver, dependant: @first_name.dependant, email: @first_name.email, emerg_phone: @first_name.emerg_phone, emergency_contact: @first_name.emergency_contact, last_name: @first_name.last_name, med_history: @first_name.med_history, nickname: @first_name.nickname, vehicle_licence: @first_name.vehicle_licence } }
    end

    assert_redirected_to first_name_url(FirstName.last)
  end

  test "should show first_name" do
    get first_name_url(@first_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_first_name_url(@first_name)
    assert_response :success
  end

  test "should update first_name" do
    patch first_name_url(@first_name), params: { first_name: { agrees_waiver: @first_name.agrees_waiver, dependant: @first_name.dependant, email: @first_name.email, emerg_phone: @first_name.emerg_phone, emergency_contact: @first_name.emergency_contact, last_name: @first_name.last_name, med_history: @first_name.med_history, nickname: @first_name.nickname, vehicle_licence: @first_name.vehicle_licence } }
    assert_redirected_to first_name_url(@first_name)
  end

  test "should destroy first_name" do
    assert_difference('FirstName.count', -1) do
      delete first_name_url(@first_name)
    end

    assert_redirected_to first_names_url
  end
end
