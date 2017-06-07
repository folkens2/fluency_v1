class Tutor < ApplicationRecord

  # Associations
  has_many :reviews, :dependent => :destroy

  # has_many :ratings, :through => :reviews
  # belongs_to :instruction_lang_skill, :class_name => "Skill"
  # belongs_to :instruction_lang, :class_name => "Language"
  # belongs_to :origin, :class_name => "Country"

  belongs_to :skill, :foreign_key => "instruction_lang_skill_id"
  belongs_to :language, :foreign_key => "instruction_lang_id"
  belongs_to :country, :foreign_key => "origin_id"

  #Validations
  validates :instruction_lang_id, presence: true
  validates :instruction_lang_skill_id, presence: true
  validates :bio, presence: true, uniqueness: true
  validates :name, presence: true
  validates :rate_hourly, presence: true
  validates :origin_id, presence: true

end
