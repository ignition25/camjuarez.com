class Post < ActiveRecord::Base
	include ActiveRecord::Timestamp
  	attr_accessible :entry, :title
end
