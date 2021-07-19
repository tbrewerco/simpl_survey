require "application_system_test_case"

class AnswerOptionsTest < ApplicationSystemTestCase
  setup do
    @answer_option = answer_options(:one)
  end

  test "visiting the index" do
    visit answer_options_url
    assert_selector "h1", text: "Answer Options"
  end

  test "creating a Answer option" do
    visit answer_options_url
    click_on "New Answer Option"

    fill_in "Answer boolean", with: @answer_option.answer_boolean
    fill_in "Answer numeric", with: @answer_option.answer_numeric
    fill_in "Answer text", with: @answer_option.answer_text
    click_on "Create Answer option"

    assert_text "Answer option was successfully created"
    click_on "Back"
  end

  test "updating a Answer option" do
    visit answer_options_url
    click_on "Edit", match: :first

    fill_in "Answer boolean", with: @answer_option.answer_boolean
    fill_in "Answer numeric", with: @answer_option.answer_numeric
    fill_in "Answer text", with: @answer_option.answer_text
    click_on "Update Answer option"

    assert_text "Answer option was successfully updated"
    click_on "Back"
  end

  test "destroying a Answer option" do
    visit answer_options_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Answer option was successfully destroyed"
  end
end
