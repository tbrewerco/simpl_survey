require "application_system_test_case"

class SurveyQuestionsTest < ApplicationSystemTestCase
  setup do
    @survey_question = survey_questions(:one)
  end

  test "visiting the index" do
    visit survey_questions_url
    assert_selector "h1", text: "Survey Questions"
  end

  test "creating a Survey question" do
    visit survey_questions_url
    click_on "New Survey Question"

    fill_in "User", with: @survey_question.user_id
    click_on "Create Survey question"

    assert_text "Survey question was successfully created"
    click_on "Back"
  end

  test "updating a Survey question" do
    visit survey_questions_url
    click_on "Edit", match: :first

    fill_in "User", with: @survey_question.user_id
    click_on "Update Survey question"

    assert_text "Survey question was successfully updated"
    click_on "Back"
  end

  test "destroying a Survey question" do
    visit survey_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Survey question was successfully destroyed"
  end
end
