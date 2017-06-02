class Review < ApplicationRecord

  # Associations
  belongs_to :user, :foreign_key => "reviewer_id"
  belongs_to :tutor

  # Validations

  validates :reviewer_id, presence: true
  validates :tutor_id, presence: true
  validates :rating, presence: true

  validates :rating, :numericality => { :only_integer => true, :allow_blank => false, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5}

end
