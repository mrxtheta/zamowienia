class CreateTowaries < ActiveRecord::Migration
  def up
    create_table :towaries do |t|
    t.integer	"zamowienie_id"
    t.string	"nazwa"
    t.integer	"cena"
    t.text		"opis"
    	t.timestamps null: false
      end
    add_index("zamowienies", "zamowienie_id")
end
def down
	drop_table :towaries
  end
end

