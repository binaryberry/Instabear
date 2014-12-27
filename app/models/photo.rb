class Photo < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :paws, dependent: :destroy

end
