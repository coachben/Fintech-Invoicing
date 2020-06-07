require 'test_helper'

class IncoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @incoice = incoices(:one)
  end

  test "should get index" do
    get incoices_url
    assert_response :success
  end

  test "should get new" do
    get new_incoice_url
    assert_response :success
  end

  test "should create incoice" do
    assert_difference('Incoice.count') do
      post incoices_url, params: { incoice: { amount: @incoice.amount, company: @incoice.company, contragent: @incoice.contragent, currency: @incoice.currency, date: @incoice.date } }
    end

    assert_redirected_to incoice_url(Incoice.last)
  end

  test "should show incoice" do
    get incoice_url(@incoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_incoice_url(@incoice)
    assert_response :success
  end

  test "should update incoice" do
    patch incoice_url(@incoice), params: { incoice: { amount: @incoice.amount, company: @incoice.company, contragent: @incoice.contragent, currency: @incoice.currency, date: @incoice.date } }
    assert_redirected_to incoice_url(@incoice)
  end

  test "should destroy incoice" do
    assert_difference('Incoice.count', -1) do
      delete incoice_url(@incoice)
    end

    assert_redirected_to incoices_url
  end
end
