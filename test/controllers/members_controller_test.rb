require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post members_url, params: { member: { agrees_waiver: @member.agrees_waiver, dependant: @member.dependant, email: @member.email, emerg_phone: @member.emerg_phone, emergency_contact: @member.emergency_contact, first_name: @member.first_name, last_name: @member.last_name, med_history: @member.med_history, nickname: @member.nickname, vehicle_licence: @member.vehicle_licence } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { agrees_waiver: @member.agrees_waiver, dependant: @member.dependant, email: @member.email, emerg_phone: @member.emerg_phone, emergency_contact: @member.emergency_contact, first_name: @member.first_name, last_name: @member.last_name, med_history: @member.med_history, nickname: @member.nickname, vehicle_licence: @member.vehicle_licence } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
