class Zamowienie < ActiveRecord::Base
	
	has_many :towaries
	belongs_to :klient

	scope :sortuj, lambda{order("zamowienies.id ASC")}
	scope :nanowsze, lambda{order("zamowienies.created_at DESC")}
end
