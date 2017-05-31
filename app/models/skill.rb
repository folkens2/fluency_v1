class Skill < ApplicationRecord

  has_many :tutors, :foreign_key => "instruction_lang_skill_id", :dependent => :destroy

end
