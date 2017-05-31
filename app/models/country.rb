class Country < ApplicationRecord

  has_many :tutors, :foreign_key => "origin_id", :dependent => :destroy

end
