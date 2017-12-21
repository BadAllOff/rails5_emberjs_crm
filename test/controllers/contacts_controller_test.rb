require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get contacts_url, as: :json
    assert_response :success
  end

  test "should create contac" do
    assert_difference('Contac.count') do
      post contacts_url, params: { contac: { additional_info: @contact.additional_info, address: @contact.address, company: @contact.company, customer_id: @contact.customer_id, email: @contact.email, family_name: @contact.family_name, given_name: @contact.given_name, phone: @contact.phone, title: @contact.title, website: @contact.website } }, as: :json
    end

    assert_response 201
  end

  test "should show contac" do
    get contact_url(@contact), as: :json
    assert_response :success
  end

  test "should update contac" do
    patch contact_url(@contact), params: { contac: { additional_info: @contact.additional_info, address: @contact.address, company: @contact.company, customer_id: @contact.customer_id, email: @contact.email, family_name: @contact.family_name, given_name: @contact.given_name, phone: @contact.phone, title: @contact.title, website: @contact.website } }, as: :json
    assert_response 200
  end

  test "should destroy contac" do
    assert_difference('Contac.count', -1) do
      delete contact_url(@contact), as: :json
    end

    assert_response 204
  end
end
