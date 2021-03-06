class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Associations
  has_many :reviews, :foreign_key => "reviewer_id", :dependent => :destroy
  has_many :favoritetutors, :dependent => :destroy
  has_many :favoritetutors_tutors, :through => :favoritetutors, :source => :tutor

end
