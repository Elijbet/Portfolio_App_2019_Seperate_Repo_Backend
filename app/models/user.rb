class User < ApplicationRecord
	has_secure_password
	has_many :articles
	has_many :design_portfolio_items
	has_many :code_portfolio_items
end
