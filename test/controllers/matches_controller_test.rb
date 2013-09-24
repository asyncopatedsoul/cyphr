require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { date_finished: @match.date_finished, game_id: @match.game_id, is_active: @match.is_active, location_id: @match.location_id, running_time: @match.running_time, turn_count: @match.turn_count, winner_group_id: @match.winner_group_id, winner_player_id: @match.winner_player_id }
    end

    assert_redirected_to match_path(assigns(:match))
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match
    assert_response :success
  end

  test "should update match" do
    patch :update, id: @match, match: { date_finished: @match.date_finished, game_id: @match.game_id, is_active: @match.is_active, location_id: @match.location_id, running_time: @match.running_time, turn_count: @match.turn_count, winner_group_id: @match.winner_group_id, winner_player_id: @match.winner_player_id }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
