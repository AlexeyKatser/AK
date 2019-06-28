class Note < ApplicationRecord
	mount_apploader :img_url, NoteImgUploader 
end
