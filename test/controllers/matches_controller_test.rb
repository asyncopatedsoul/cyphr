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
      post :create, match: { date_finished: @match.date_finished, date_started: @match.date_started, final_player_id: @match.final_player_id, game_id: @match.game_id, is_valid: @match.is_valid, location_id: @match.location_id, player_id_list: @match.player_id_list, running_time: @match.running_time, score_list: @match.score_list, status_id: @match.status_id, turn_count: @match.turn_count, zone_id: @match.zone_id }
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
    patch :update, id: @match, match: { date_finished: @match.date_finished, date_started: @match.date_started, final_player_id: @match.final_player_id, game_id: @match.game_id, is_valid: @match.is_valid, location_id: @match.location_id, player_id_list: @match.player_id_list, running_time: @match.running_time, score_list: @match.score_list, status_id: @match.status_id, turn_count: @match.turn_count, zone_id: @match.zone_id }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
