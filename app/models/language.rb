class Language < ApplicationRecord

  # Associations
  has_many :tutors, :foreign_key => "instruction_lang_id", :dependent => :destroy

  # Validations
  validates :name, presence: true, uniqueness: true

end
