require "application_system_test_case"

class DiceRollsTest < ApplicationSystemTestCase
  setup do
    @dice_roll = dice_rolls(:one)
  end

  test "visiting the index" do
    visit dice_rolls_url
    assert_selector "h1", text: "Dice rolls"
  end

  test "should create dice roll" do
    visit dice_rolls_url
    click_on "New dice roll"

    fill_in "Dice type", with: @dice_roll.dice_type_id
    fill_in "Quantity", with: @dice_roll.quantity
    fill_in "Roll result", with: @dice_roll.roll_result
    fill_in "User", with: @dice_roll.user_id
    click_on "Create Dice roll"

    assert_text "Dice roll was successfully created"
    click_on "Back"
  end

  test "should update Dice roll" do
    visit dice_roll_url(@dice_roll)
    click_on "Edit this dice roll", match: :first

    fill_in "Dice type", with: @dice_roll.dice_type_id
    fill_in "Quantity", with: @dice_roll.quantity
    fill_in "Roll result", with: @dice_roll.roll_result
    fill_in "User", with: @dice_roll.user_id
    click_on "Update Dice roll"

    assert_text "Dice roll was successfully updated"
    click_on "Back"
  end

  test "should destroy Dice roll" do
    visit dice_roll_url(@dice_roll)
    click_on "Destroy this dice roll", match: :first

    assert_text "Dice roll was successfully destroyed"
  end
end
