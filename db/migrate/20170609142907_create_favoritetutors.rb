class CreateFavoritetutors < ActiveRecord::Migration[5.0]
  def change
    create_table :favoritetutors do |t|
      t.integer :user_id
      t.integer :tutor_id

      t.timestamps

    end
  end
end
