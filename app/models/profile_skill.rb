class ProfileSkill < ApplicationRecord
  belongs_to :profile
  belongs_to :skill

  validates :skill, presence: true

  validates :experience, presence: true, inclusion: { in: (0..5) },
                     numericality: { only_integer: true }

end
