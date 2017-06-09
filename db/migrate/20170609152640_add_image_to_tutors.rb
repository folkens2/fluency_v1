class AddImageToTutors < ActiveRecord::Migration[5.0]
  def change
    add_column :tutors, :image, :string
  end
end
