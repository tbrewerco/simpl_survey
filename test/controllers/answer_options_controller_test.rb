require "test_helper"

class AnswerOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answer_option = answer_options(:one)
  end

  test "should get index" do
    get answer_options_url
    assert_response :success
  end

  test "should get new" do
    get new_answer_option_url
    assert_response :success
  end

  test "should create answer_option" do
    assert_difference('AnswerOption.count') do
      post answer_options_url, params: { answer_option: { answer_boolean: @answer_option.answer_boolean, answer_numeric: @answer_option.answer_numeric, answer_text: @answer_option.answer_text } }
    end

    assert_redirected_to answer_option_url(AnswerOption.last)
  end

  test "should show answer_option" do
    get answer_option_url(@answer_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_answer_option_url(@answer_option)
    assert_response :success
  end

  test "should update answer_option" do
    patch answer_option_url(@answer_option), params: { answer_option: { answer_boolean: @answer_option.answer_boolean, answer_numeric: @answer_option.answer_numeric, answer_text: @answer_option.answer_text } }
    assert_redirected_to answer_option_url(@answer_option)
  end

  test "should destroy answer_option" do
    assert_difference('AnswerOption.count', -1) do
      delete answer_option_url(@answer_option)
    end

    assert_redirected_to answer_options_url
  end
end
