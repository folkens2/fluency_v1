class Skill < ApplicationRecord

  # Associations
  has_many :tutors, :foreign_key => "instruction_lang_skill_id", :dependent => :destroy

  # Validations
  validates :level, presence: true

end
