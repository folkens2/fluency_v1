class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Associations
  has_many :reviews, :foreign_key => "reviewer_id", :dependent => :destroy

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true

end
