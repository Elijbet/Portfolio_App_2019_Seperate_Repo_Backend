class AddUserToDesignPortfolioItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :design_portfolio_items, :user, foreign_key: true
  end
end
