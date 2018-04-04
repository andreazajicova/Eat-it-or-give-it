require 'test_helper'

class FoodItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_item = food_items(:one)
  end

  test "should get index" do
    get food_items_url
    assert_response :success
  end

  test "should get new" do
    get new_food_item_url
    assert_response :success
  end

  test "should create food_item" do
    assert_difference('FoodItem.count') do
      post food_items_url, params: { food_item: { address: @food_item.address, available_end: @food_item.available_end, available_start: @food_item.available_start, expiration_date: @food_item.expiration_date, title: @food_item.title, user_id: @food_item.user_id } }
    end

    assert_redirected_to food_item_url(FoodItem.last)
  end

  test "should show food_item" do
    get food_item_url(@food_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_item_url(@food_item)
    assert_response :success
  end

  test "should update food_item" do
    patch food_item_url(@food_item), params: { food_item: { address: @food_item.address, available_end: @food_item.available_end, available_start: @food_item.available_start, expiration_date: @food_item.expiration_date, title: @food_item.title, user_id: @food_item.user_id } }
    assert_redirected_to food_item_url(@food_item)
  end

  test "should destroy food_item" do
    assert_difference('FoodItem.count', -1) do
      delete food_item_url(@food_item)
    end

    assert_redirected_to food_items_url
  end
end
