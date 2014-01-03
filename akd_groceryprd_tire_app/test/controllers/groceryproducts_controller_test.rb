require 'test_helper'

class GroceryproductsControllerTest < ActionController::TestCase
  setup do
    @groceryproduct = groceryproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groceryproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groceryproduct" do
    assert_difference('Groceryproduct.count') do
      post :create, groceryproduct: { content: @groceryproduct.content, published_on: @groceryproduct.published_on, title: @groceryproduct.title }
    end

    assert_redirected_to groceryproduct_path(assigns(:groceryproduct))
  end

  test "should show groceryproduct" do
    get :show, id: @groceryproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @groceryproduct
    assert_response :success
  end

  test "should update groceryproduct" do
    patch :update, id: @groceryproduct, groceryproduct: { content: @groceryproduct.content, published_on: @groceryproduct.published_on, title: @groceryproduct.title }
    assert_redirected_to groceryproduct_path(assigns(:groceryproduct))
  end

  test "should destroy groceryproduct" do
    assert_difference('Groceryproduct.count', -1) do
      delete :destroy, id: @groceryproduct
    end

    assert_redirected_to groceryproducts_path
  end
end
