class Book < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
	belongs_to :author

	accepts_nested_attributes_for :author
 end
