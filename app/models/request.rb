class Request < ApplicationRecord

validates :phone, :name, presence: true
validates :phone, format: { with: /8\(\d{3}\) \d{3}-\d{2}-\d{2}/ } 
validates :name, length: { in: 3..30 }

attr_accessor :s_type

belongs_to :service

before_save :before_save

def before_save
#	self.name = self.name.downcase
end

end

