class Favoritetutor < ApplicationRecord

  #Associations
  belongs_to :user
  belongs_to :tutor

  # Validations

  validates :tutor_id, uniqueness: true

end
