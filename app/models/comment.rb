class Comment < ActiveRecord::Base
	belongs_to :photo
	has_many :likes
end
