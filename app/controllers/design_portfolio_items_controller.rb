class DesignPortfolioItemsController < ApplicationController
  before_action :authorize_access_request!, :except => [:index]
  before_action :set_design_portfolio_item, only: [:show, :update, :destroy]

  # GET /design_portfolio_items
  def index
    @design_portfolio_items = DesignPortfolioItem.all
    render json: @design_portfolio_items.as_json(include: :user), status: 200

    # render json: @design_portfolio_items
  end

  # GET /design_portfolio_items/1
  def show
    render json: @design_portfolio_item
  end

  # POST /design_portfolio_items
  def create
    ROLES = %w[admin].freeze

    # @design_portfolio_item = DesignPortfolioItem.new(design_portfolio_item_params)
    @design_portfolio_item = current_user.design_portfolio_items.build(design_portfolio_item_params)

    if @design_portfolio_item.save
      render json: @design_portfolio_item, status: :created, location: @design_portfolio_item
    else
      render json: @design_portfolio_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /design_portfolio_items/1
  def update
    ROLES = %w[admin].freeze
    if @design_portfolio_item.update(design_portfolio_item_params)
      render json: @design_portfolio_item
    else
      render json: @design_portfolio_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /design_portfolio_items/1
  def destroy
    ROLES = %w[admin].freeze
    @design_portfolio_item.destroy
  end

  def token_claims
    {
      aud: ROLES,
      verify_aud: true
    }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design_portfolio_item
      # @design_portfolio_item = DesignPortfolioItem.find(params[:id])
      @design_portfolio_item = current_user.design_portfolio_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def design_portfolio_item_params
      params.require(:design_portfolio_item).permit(:title, :text, :date, :image)
    end
end
