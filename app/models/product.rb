class Product < ApplicationRecord
	has_many :orders
	has_many :comments
	def self.search(search_term)
  	Product.where("name LIKE ?", "%#{search_term}%")
	else
	Product.where("name ilike ?", "%#{search_term}%")
	end

	def highest_rating_comment
  		comments.rating_desc.first
	end
	def lowest_rating_comment
		comments.rating_asc.first
	end
	def average_rating
  		comments.average(:rating).to_f
	end

	validates :name, presence: true
		validates :user, presence: true
  	validates :product, presence: true
  	validates :rating, numericality: { only_integer: true }
end

