require 'test_helper'

class CodePortfolioItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @code_portfolio_item = code_portfolio_items(:one)
  end

  test "should get index" do
    get code_portfolio_items_url, as: :json
    assert_response :success
  end

  test "should create code_portfolio_item" do
    assert_difference('CodePortfolioItem.count') do
      post code_portfolio_items_url, params: { code_portfolio_item: { date: @code_portfolio_item.date, text: @code_portfolio_item.text, title: @code_portfolio_item.title } }, as: :json
    end

    assert_response 201
  end

  test "should show code_portfolio_item" do
    get code_portfolio_item_url(@code_portfolio_item), as: :json
    assert_response :success
  end

  test "should update code_portfolio_item" do
    patch code_portfolio_item_url(@code_portfolio_item), params: { code_portfolio_item: { date: @code_portfolio_item.date, text: @code_portfolio_item.text, title: @code_portfolio_item.title } }, as: :json
    assert_response 200
  end

  test "should destroy code_portfolio_item" do
    assert_difference('CodePortfolioItem.count', -1) do
      delete code_portfolio_item_url(@code_portfolio_item), as: :json
    end

    assert_response 204
  end
end
