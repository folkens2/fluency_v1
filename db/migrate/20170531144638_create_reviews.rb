class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :reviewer_id
      t.integer :tutor_id
      t.string :comments
      t.integer :rating

      t.timestamps

    end
  end
end
