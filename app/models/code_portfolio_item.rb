class CodePortfolioItem < ApplicationRecord
	mount_uploader :image, ImageUploader
end
