class Tutor < ApplicationRecord

  has_many :reviews, :dependent => :destroy

  # has_many :ratings, :through => :reviews

  belongs_to :instruction_lang_skill, :class_name => "Skill"

  belongs_to :instruction_lang, :class_name => "Language"

  belongs_to :origin, :class_name => "Country"

end
