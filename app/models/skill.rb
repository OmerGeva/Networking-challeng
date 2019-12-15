class Skill < ApplicationRecord
  has_many :profile_skills


  has_many :profiles, through: :profile_skills, dependant: :destroy

  validates :title, uniqueness: true


  include PgSearch::Model
  multisearchable against: [:title]
end
