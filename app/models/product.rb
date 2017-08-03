class Product < ApplicationRecord
	validates :name, presence: true
	validates :price, numericality: true
	validates :description, presence: true  
	validates :image_url, format: { with: %r{.(jpg|png)\Z}i, message: 'must be a URL for JPG or PNG image.' }
	has_many :orders
	has_many :comments

	def self.search(search_term)
    like_operator = Rails.env.production? ? 'ilike' : 'like'
    Product.where("name #{like_operator} ?", "%#{search_term}%")
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


end

