class Request < ApplicationRecord

validates :phone, :name, presence: true
validates :phone, format: { with: /\+?\d{11,12}/ } 
validates :name, length: { in: 2..30 }
validates :phone, length: { in: 11..12}


before_save :before_save

def before_save
#	self.name = self.name.downcase
end

end

