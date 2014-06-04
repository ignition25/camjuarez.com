class Post < ActiveRecord::Base
	include ActiveRecord::Timestamp
	extend FriendlyId
	friendly_id :title, use: :slugged
  	attr_accessible :entry, :title, :category, :header_image, :header_image_title
end
