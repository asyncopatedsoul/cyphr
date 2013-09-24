require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { avatar_url: @player.avatar_url, birthday: @player.birthday, email: @player.email, facebook_token: @player.facebook_token, facebook_uid: @player.facebook_uid, first_name: @player.first_name, gender: @player.gender, last_name: @player.last_name, latitude: @player.latitude, location_id: @player.location_id, longitude: @player.longitude, nickname: @player.nickname, password: @player.password, short_bio: @player.short_bio, skype_name: @player.skype_name, twitter_token: @player.twitter_token, twitter_token_secret: @player.twitter_token_secret }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { avatar_url: @player.avatar_url, birthday: @player.birthday, email: @player.email, facebook_token: @player.facebook_token, facebook_uid: @player.facebook_uid, first_name: @player.first_name, gender: @player.gender, last_name: @player.last_name, latitude: @player.latitude, location_id: @player.location_id, longitude: @player.longitude, nickname: @player.nickname, password: @player.password, short_bio: @player.short_bio, skype_name: @player.skype_name, twitter_token: @player.twitter_token, twitter_token_secret: @player.twitter_token_secret }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
