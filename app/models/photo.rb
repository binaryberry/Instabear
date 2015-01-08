class Photo < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :paws, dependent: :destroy
	has_attached_file :image, :styles => { :medium => "3000x3000>", :thumb => "2000x2000>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
