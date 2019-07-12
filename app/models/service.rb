class Service < ApplicationRecord

	mount_uploader :icon, NoteImgUploader 
end
