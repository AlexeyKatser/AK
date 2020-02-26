class Note < ApplicationRecord

	has_rich_text :content
	
	validates :topic, presence: true

	mount_uploader :img_url, NoteImgUploader 
end
