require 'test_helper'

class TurnsControllerTest < ActionController::TestCase
  setup do
    @turn = turns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turn" do
    assert_difference('Turn.count') do
      post :create, turn: { date_finished: @turn.date_finished, delta: @turn.delta, game_id: @turn.game_id, group_id: @turn.group_id, is_active: @turn.is_active, match_id: @turn.match_id, metadata: @turn.metadata, player_id: @turn.player_id, running_time: @turn.running_time, score: @turn.score }
    end

    assert_redirected_to turn_path(assigns(:turn))
  end

  test "should show turn" do
    get :show, id: @turn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turn
    assert_response :success
  end

  test "should update turn" do
    patch :update, id: @turn, turn: { date_finished: @turn.date_finished, delta: @turn.delta, game_id: @turn.game_id, group_id: @turn.group_id, is_active: @turn.is_active, match_id: @turn.match_id, metadata: @turn.metadata, player_id: @turn.player_id, running_time: @turn.running_time, score: @turn.score }
    assert_redirected_to turn_path(assigns(:turn))
  end

  test "should destroy turn" do
    assert_difference('Turn.count', -1) do
      delete :destroy, id: @turn
    end

    assert_redirected_to turns_path
  end
end
