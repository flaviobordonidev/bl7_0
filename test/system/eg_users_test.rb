require "application_system_test_case"

class EgUsersTest < ApplicationSystemTestCase
  setup do
    @eg_user = eg_users(:one)
  end

  test "visiting the index" do
    visit eg_users_url
    assert_selector "h1", text: "Eg users"
  end

  test "should create eg user" do
    visit eg_users_url
    click_on "New eg user"

    fill_in "Email", with: @eg_user.email
    fill_in "Encrypted password", with: @eg_user.encrypted_password
    fill_in "Name", with: @eg_user.name
    click_on "Create Eg user"

    assert_text "Eg user was successfully created"
    click_on "Back"
  end

  test "should update Eg user" do
    visit eg_user_url(@eg_user)
    click_on "Edit this eg user", match: :first

    fill_in "Email", with: @eg_user.email
    fill_in "Encrypted password", with: @eg_user.encrypted_password
    fill_in "Name", with: @eg_user.name
    click_on "Update Eg user"

    assert_text "Eg user was successfully updated"
    click_on "Back"
  end

  test "should destroy Eg user" do
    visit eg_user_url(@eg_user)
    click_on "Destroy this eg user", match: :first

    assert_text "Eg user was successfully destroyed"
  end
end
