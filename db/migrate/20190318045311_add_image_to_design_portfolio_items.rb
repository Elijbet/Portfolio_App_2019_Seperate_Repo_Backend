class AddImageToDesignPortfolioItems < ActiveRecord::Migration[5.2]
  def change
    add_column :design_portfolio_items, :image, :string
  end
end
