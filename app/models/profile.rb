class Profile < ApplicationRecord
  belongs_to :user


  has_many :profile_skills
  has_many :skills, through: :profile_skills
  mount_uploader :photo, PhotoUploader
  include PgSearch::Model
    multisearchable against: [:email, :full_name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
