class Event < ApplicationRecord
	mount_uploader :image, NoteImgUploader 
end
