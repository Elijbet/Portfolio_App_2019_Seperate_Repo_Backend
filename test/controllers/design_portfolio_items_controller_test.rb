require 'test_helper'

class DesignPortfolioItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @design_portfolio_item = design_portfolio_items(:one)
  end

  test "should get index" do
    get design_portfolio_items_url, as: :json
    assert_response :success
  end

  test "should create design_portfolio_item" do
    assert_difference('DesignPortfolioItem.count') do
      post design_portfolio_items_url, params: { design_portfolio_item: { date: @design_portfolio_item.date, text: @design_portfolio_item.text, title: @design_portfolio_item.title } }, as: :json
    end

    assert_response 201
  end

  test "should show design_portfolio_item" do
    get design_portfolio_item_url(@design_portfolio_item), as: :json
    assert_response :success
  end

  test "should update design_portfolio_item" do
    patch design_portfolio_item_url(@design_portfolio_item), params: { design_portfolio_item: { date: @design_portfolio_item.date, text: @design_portfolio_item.text, title: @design_portfolio_item.title } }, as: :json
    assert_response 200
  end

  test "should destroy design_portfolio_item" do
    assert_difference('DesignPortfolioItem.count', -1) do
      delete design_portfolio_item_url(@design_portfolio_item), as: :json
    end

    assert_response 204
  end
end
