class Uzytkownik < ActiveRecord::Base
    has_secure_password
    has_many :klients
    has_many :zamowienias

    scope :sortuj, lambda{order("uzytkowniks.id ASC")}
    scope :sortuj2, lambda{order("uzytkowniks.uzytkownik ASC")}
    scope :najnowsza, lambda{order("uzytkowniks.created_at DESC")}

end
