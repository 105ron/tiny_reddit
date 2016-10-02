class Post < ApplicationRecord
	validates :content, presence: true, length: { maximum: 2024, minimum: 20 }
	validates :title, presence: true, length: { maximum: 100, minimum: 4 }
end
