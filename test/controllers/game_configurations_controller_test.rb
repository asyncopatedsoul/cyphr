require 'test_helper'

class GameConfigurationsControllerTest < ActionController::TestCase
  setup do
    @game_configuration = game_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_configuration" do
    assert_difference('GameConfiguration.count') do
      post :create, game_configuration: { author_id: @game_configuration.author_id, game_id: @game_configuration.game_id, match_id: @game_configuration.match_id, metadata: @game_configuration.metadata, title: @game_configuration.title }
    end

    assert_redirected_to game_configuration_path(assigns(:game_configuration))
  end

  test "should show game_configuration" do
    get :show, id: @game_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_configuration
    assert_response :success
  end

  test "should update game_configuration" do
    patch :update, id: @game_configuration, game_configuration: { author_id: @game_configuration.author_id, game_id: @game_configuration.game_id, match_id: @game_configuration.match_id, metadata: @game_configuration.metadata, title: @game_configuration.title }
    assert_redirected_to game_configuration_path(assigns(:game_configuration))
  end

  test "should destroy game_configuration" do
    assert_difference('GameConfiguration.count', -1) do
      delete :destroy, id: @game_configuration
    end

    assert_redirected_to game_configurations_path
  end
end
