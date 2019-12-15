class Skill < ApplicationRecord
  has_many :profile_skills


  has_many :profiles, through: :profile_skills

  validates :title, uniqueness: true


  include PgSearch::Model
  multisearchable against: [:title]
end
