require 'test_helper'

class SmoksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smok = smoks(:one)
  end

  test "should get index" do
    get smoks_url
    assert_response :success
  end

  test "should get new" do
    get new_smok_url
    assert_response :success
  end

  test "should create smok" do
    assert_difference('Smok.count') do
      post smoks_url, params: { smok: { atk: @smok.atk, exp: @smok.exp, hp: @smok.hp, lvl: @smok.lvl, mp: @smok.mp, user_id: @smok.user_id } }
    end

    assert_redirected_to smok_url(Smok.last)
  end

  test "should show smok" do
    get smok_url(@smok)
    assert_response :success
  end

  test "should get edit" do
    get edit_smok_url(@smok)
    assert_response :success
  end

  test "should update smok" do
    patch smok_url(@smok), params: { smok: { atk: @smok.atk, exp: @smok.exp, hp: @smok.hp, lvl: @smok.lvl, mp: @smok.mp, user_id: @smok.user_id } }
    assert_redirected_to smok_url(@smok)
  end

  test "should destroy smok" do
    assert_difference('Smok.count', -1) do
      delete smok_url(@smok)
    end

    assert_redirected_to smoks_url
  end
end
