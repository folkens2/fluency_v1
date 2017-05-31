class CreateTutors < ActiveRecord::Migration[5.0]
  def change
    create_table :tutors do |t|
      t.integer :instruction_lang_id
      t.integer :instruction_lang_skill_id
      t.string :bio
      t.string :name
      t.integer :rate_hourly
      t.integer :origin_id

      t.timestamps

    end
  end
end
