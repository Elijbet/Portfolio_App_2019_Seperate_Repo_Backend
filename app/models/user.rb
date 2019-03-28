class User < ApplicationRecord
	has_secure_password
	has_many :articles
	has_many :design_portfolio_items
	has_many :code_portfolio_items

	enum role: %i[user manager admin].freeze

  validates :email,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            presence: true,
            uniqueness: { case_sensitive: false }
end
