class Register < ApplicationRecord
	#attr_accessible :photo
	
	mount_uploader :image, ImageUploader
end
