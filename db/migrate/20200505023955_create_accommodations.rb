class CreateAccommodations < ActiveRecord::Migration[5.2]
  def change
    create_table :accommodations do |t|
    	t.integer :available_beds
    	t.integer :price
    	t.text :description
    	t.boolean :has_wifi
      t.text :welcome_message

    	t.belongs_to :user, index: true
    	t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
