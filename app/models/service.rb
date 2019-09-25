class Service < ApplicationRecord
  
  has_many :requests

	mount_uploader :icon, NoteImgUploader 
end
