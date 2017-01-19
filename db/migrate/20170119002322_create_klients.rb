class CreateKlients < ActiveRecord::Migration
  def up
    create_table :klients do |t|
	t.integer "user_id", :limit=>25
	t.timestamps null: false
    end
end
def down
    drop_table :klients  
  end
end
