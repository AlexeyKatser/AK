class Note < ApplicationRecord
	
	validates :topic, presence: true

	mount_uploader :img_url, NoteImgUploader 
end
