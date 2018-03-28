require 'test_helper'

class HighSchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @high_school = high_schools(:one)
  end

  test "should get index" do
    get high_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_high_school_url
    assert_response :success
  end

  test "should create high_school" do
    assert_difference('HighSchool.count') do
      post high_schools_url, params: { high_school: { game: @high_school.game, score: @high_school.score } }
    end

    assert_redirected_to high_school_url(HighSchool.last)
  end

  test "should show high_school" do
    get high_school_url(@high_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_high_school_url(@high_school)
    assert_response :success
  end

  test "should update high_school" do
    patch high_school_url(@high_school), params: { high_school: { game: @high_school.game, score: @high_school.score } }
    assert_redirected_to high_school_url(@high_school)
  end

  test "should destroy high_school" do
    assert_difference('HighSchool.count', -1) do
      delete high_school_url(@high_school)
    end

    assert_redirected_to high_schools_url
  end
end
