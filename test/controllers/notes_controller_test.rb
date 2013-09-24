require 'test_helper'

class NotesControllerTest < ActionController::TestCase
  setup do
    @note = notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create note" do
    assert_difference('Note.count') do
      post :create, note: { author_id: @note.author_id, game_id: @note.game_id, match_id: @note.match_id, player_id: @note.player_id, privacy: @note.privacy, text: @note.text, turn_id: @note.turn_id, type_id: @note.type_id }
    end

    assert_redirected_to note_path(assigns(:note))
  end

  test "should show note" do
    get :show, id: @note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @note
    assert_response :success
  end

  test "should update note" do
    patch :update, id: @note, note: { author_id: @note.author_id, game_id: @note.game_id, match_id: @note.match_id, player_id: @note.player_id, privacy: @note.privacy, text: @note.text, turn_id: @note.turn_id, type_id: @note.type_id }
    assert_redirected_to note_path(assigns(:note))
  end

  test "should destroy note" do
    assert_difference('Note.count', -1) do
      delete :destroy, id: @note
    end

    assert_redirected_to notes_path
  end
end
