class CodePortfolioItemsController < ApplicationController
  before_action :authorize_access_request!, :except => [:index]
  before_action :set_code_portfolio_item, only: [:show, :update, :destroy]

  # GET /code_portfolio_items
  def index
    @code_portfolio_items = CodePortfolioItem.all

    render json: @code_portfolio_items
  end

  # GET /code_portfolio_items/1
  def show
    render json: @code_portfolio_item
  end

  # POST /code_portfolio_items
  def create
    # @code_portfolio_item = CodePortfolioItem.new(code_portfolio_item_params)
    @code_portfolio_item = current_user.code_portfolio_items.build(code_portfolio_item_params)

    if @code_portfolio_item.save
      render json: @code_portfolio_item, status: :created, location: @code_portfolio_item
    else
      render json: @code_portfolio_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /code_portfolio_items/1
  def update
    if @code_portfolio_item.update(code_portfolio_item_params)
      render json: @code_portfolio_item
    else
      render json: @code_portfolio_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /code_portfolio_items/1
  def destroy
    @code_portfolio_item.destroy
  end

  def token_claims
    {
      aud: ROLES,
      verify_aud: true
    }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_portfolio_item
      # @code_portfolio_item = CodePortfolioItem.find(params[:id])
      @code_portfolio_item = current_user.code_portfolio_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def code_portfolio_item_params
      params.require(:code_portfolio_item).permit(:title, :text, :date, :image)
    end
end
