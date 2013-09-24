require 'test_helper'

class RankingsControllerTest < ActionController::TestCase
  setup do
    @ranking = rankings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rankings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ranking" do
    assert_difference('Ranking.count') do
      post :create, ranking: { elo_score: @ranking.elo_score, game_id: @ranking.game_id, game_metadata: @ranking.game_metadata, group_id: @ranking.group_id, loss_count: @ranking.loss_count, match_count: @ranking.match_count, match_id_list: @ranking.match_id_list, player_id: @ranking.player_id, scope_group_id: @ranking.scope_group_id, win_count: @ranking.win_count, win_ratio: @ranking.win_ratio }
    end

    assert_redirected_to ranking_path(assigns(:ranking))
  end

  test "should show ranking" do
    get :show, id: @ranking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ranking
    assert_response :success
  end

  test "should update ranking" do
    patch :update, id: @ranking, ranking: { elo_score: @ranking.elo_score, game_id: @ranking.game_id, game_metadata: @ranking.game_metadata, group_id: @ranking.group_id, loss_count: @ranking.loss_count, match_count: @ranking.match_count, match_id_list: @ranking.match_id_list, player_id: @ranking.player_id, scope_group_id: @ranking.scope_group_id, win_count: @ranking.win_count, win_ratio: @ranking.win_ratio }
    assert_redirected_to ranking_path(assigns(:ranking))
  end

  test "should destroy ranking" do
    assert_difference('Ranking.count', -1) do
      delete :destroy, id: @ranking
    end

    assert_redirected_to rankings_path
  end
end
