require 'test_helper'

class ContacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contac = contacs(:one)
  end

  test "should get index" do
    get contacs_url, as: :json
    assert_response :success
  end

  test "should create contac" do
    assert_difference('Contac.count') do
      post contacs_url, params: { contac: { additional_info: @contac.additional_info, address: @contac.address, company: @contac.company, customer_id: @contac.customer_id, email: @contac.email, family_name: @contac.family_name, given_name: @contac.given_name, phone: @contac.phone, title: @contac.title, website: @contac.website } }, as: :json
    end

    assert_response 201
  end

  test "should show contac" do
    get contac_url(@contac), as: :json
    assert_response :success
  end

  test "should update contac" do
    patch contac_url(@contac), params: { contac: { additional_info: @contac.additional_info, address: @contac.address, company: @contac.company, customer_id: @contac.customer_id, email: @contac.email, family_name: @contac.family_name, given_name: @contac.given_name, phone: @contac.phone, title: @contac.title, website: @contac.website } }, as: :json
    assert_response 200
  end

  test "should destroy contac" do
    assert_difference('Contac.count', -1) do
      delete contac_url(@contac), as: :json
    end

    assert_response 204
  end
end
