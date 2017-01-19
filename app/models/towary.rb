class Towary < ActiveRecord::Base

	belongs_to :zamowienies

	scope :sortuj, lambda{order("towaries.id ASC")}
	scope :najnowsze, lambda{order("towaries.created_at DESC")}
end
