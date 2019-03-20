class AddImageToCodePortfolioItems < ActiveRecord::Migration[5.2]
  def change
    add_column :code_portfolio_items, :image, :string
  end
end
