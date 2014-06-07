require 'test_helper'

class AddimitionsControllerTest < ActionController::TestCase
  setup do
    @addimition = addimitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addimitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addimition" do
    assert_difference('Addimition.count') do
      post :create, addimition: {  }
    end

    assert_redirected_to addimition_path(assigns(:addimition))
  end

  test "should show addimition" do
    get :show, id: @addimition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addimition
    assert_response :success
  end

  test "should update addimition" do
    put :update, id: @addimition, addimition: {  }
    assert_redirected_to addimition_path(assigns(:addimition))
  end

  test "should destroy addimition" do
    assert_difference('Addimition.count', -1) do
      delete :destroy, id: @addimition
    end

    assert_redirected_to addimitions_path
  end
end
