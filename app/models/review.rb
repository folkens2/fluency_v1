class Review < ApplicationRecord
  
  belongs_to :user, :foreign_key => "reviewer_id"

  belongs_to :tutor

end
