class CreateZamowienies < ActiveRecord::Migration
  def up
    create_table :zamowienies do |t|
    	t.string "klient_id"
    	t.string "status"
    	t.integer "wartosc"
    	t.boolean "wyslaneczynie", :default => false
    	t.text "zawartosc"
      t.timestamps null: false
    end
    add_index("zamowienies", "klient_id")
end
def down
	drop_table :zamowienies
  end
end
