class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true

  belongs_to :department
  belongs_to :role

  has_many :detentions
  has_many :versions

  accepts_nested_attributes_for :department



end
