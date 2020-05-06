class CreateJoinTableUserVilles < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_user_villes do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
