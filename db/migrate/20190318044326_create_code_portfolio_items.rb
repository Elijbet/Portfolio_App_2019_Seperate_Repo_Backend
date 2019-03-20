class CreateCodePortfolioItems < ActiveRecord::Migration[5.2]
  def change
    create_table :code_portfolio_items do |t|
      t.string :title
      t.text :text
      t.datetime :date

      t.timestamps
    end
  end
end
