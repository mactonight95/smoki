require 'test_helper'

class JedzeniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jedzeny = jedzenies(:one)
  end

  test "should get index" do
    get jedzenies_url
    assert_response :success
  end

  test "should get new" do
    get new_jedzeny_url
    assert_response :success
  end

  test "should create jedzeny" do
    assert_difference('Jedzenie.count') do
      post jedzenies_url, params: { jedzeny: { bonus_exp: @jedzeny.bonus_exp, regen_hp: @jedzeny.regen_hp, regen_mp: @jedzeny.regen_mp, user_id: @jedzeny.user_id } }
    end

    assert_redirected_to jedzeny_url(Jedzenie.last)
  end

  test "should show jedzeny" do
    get jedzeny_url(@jedzeny)
    assert_response :success
  end

  test "should get edit" do
    get edit_jedzeny_url(@jedzeny)
    assert_response :success
  end

  test "should update jedzeny" do
    patch jedzeny_url(@jedzeny), params: { jedzeny: { bonus_exp: @jedzeny.bonus_exp, regen_hp: @jedzeny.regen_hp, regen_mp: @jedzeny.regen_mp, user_id: @jedzeny.user_id } }
    assert_redirected_to jedzeny_url(@jedzeny)
  end

  test "should destroy jedzeny" do
    assert_difference('Jedzenie.count', -1) do
      delete jedzeny_url(@jedzeny)
    end

    assert_redirected_to jedzenies_url
  end
end
