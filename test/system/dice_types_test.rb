require "application_system_test_case"

class DiceTypesTest < ApplicationSystemTestCase
  setup do
    @dice_type = dice_types(:one)
  end

  test "visiting the index" do
    visit dice_types_url
    assert_selector "h1", text: "Dice types"
  end

  test "should create dice type" do
    visit dice_types_url
    click_on "New dice type"

    fill_in "Name", with: @dice_type.name
    fill_in "Position", with: @dice_type.position
    fill_in "Sides", with: @dice_type.sides
    click_on "Create Dice type"

    assert_text "Dice type was successfully created"
    click_on "Back"
  end

  test "should update Dice type" do
    visit dice_type_url(@dice_type)
    click_on "Edit this dice type", match: :first

    fill_in "Name", with: @dice_type.name
    fill_in "Position", with: @dice_type.position
    fill_in "Sides", with: @dice_type.sides
    click_on "Update Dice type"

    assert_text "Dice type was successfully updated"
    click_on "Back"
  end

  test "should destroy Dice type" do
    visit dice_type_url(@dice_type)
    click_on "Destroy this dice type", match: :first

    assert_text "Dice type was successfully destroyed"
  end
end
