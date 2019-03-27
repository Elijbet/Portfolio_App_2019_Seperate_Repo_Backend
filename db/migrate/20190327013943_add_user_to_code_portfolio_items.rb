class AddUserToCodePortfolioItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :code_portfolio_items, :user, foreign_key: true
  end
end
