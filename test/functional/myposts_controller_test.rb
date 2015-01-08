require 'test_helper'

class MypostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mypost" do
    assert_difference('Mypost.count') do
      post :create, :mypost => { }
    end

    assert_redirected_to mypost_path(assigns(:mypost))
  end

  test "should show mypost" do
    get :show, :id => myposts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => myposts(:one).to_param
    assert_response :success
  end

  test "should update mypost" do
    put :update, :id => myposts(:one).to_param, :mypost => { }
    assert_redirected_to mypost_path(assigns(:mypost))
  end

  test "should destroy mypost" do
    assert_difference('Mypost.count', -1) do
      delete :destroy, :id => myposts(:one).to_param
    end

    assert_redirected_to myposts_path
  end
end
