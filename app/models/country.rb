class Country < ApplicationRecord

  # Associations
  has_many :tutors, :foreign_key => "origin_id", :dependent => :destroy

  # Validations
  validates :id, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

end
