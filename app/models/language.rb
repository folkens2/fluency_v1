class Language < ApplicationRecord

  has_many :tutors, :foreign_key => "instruction_lang_id", :dependent => :destroy

end
