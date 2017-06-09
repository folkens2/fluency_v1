class Favoritetutor < ApplicationRecord

  #Associations
  belongs_to :user
  belongs_to :tutor  

end
