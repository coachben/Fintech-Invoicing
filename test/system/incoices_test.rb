require "application_system_test_case"

class IncoicesTest < ApplicationSystemTestCase
  setup do
    @incoice = incoices(:one)
  end

  test "visiting the index" do
    visit incoices_url
    assert_selector "h1", text: "Incoices"
  end

  test "creating a Incoice" do
    visit incoices_url
    click_on "New Incoice"

    fill_in "Amount", with: @incoice.amount
    fill_in "Company", with: @incoice.company
    fill_in "Contragent", with: @incoice.contragent
    fill_in "Currency", with: @incoice.currency
    fill_in "Date", with: @incoice.date
    click_on "Create Incoice"

    assert_text "Incoice was successfully created"
    click_on "Back"
  end

  test "updating a Incoice" do
    visit incoices_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @incoice.amount
    fill_in "Company", with: @incoice.company
    fill_in "Contragent", with: @incoice.contragent
    fill_in "Currency", with: @incoice.currency
    fill_in "Date", with: @incoice.date
    click_on "Update Incoice"

    assert_text "Incoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Incoice" do
    visit incoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incoice was successfully destroyed"
  end
end
