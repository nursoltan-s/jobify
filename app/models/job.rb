class Job < ApplicationRecord
  belongs_to :company
  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  enum job_type: [:full_time, :part_time, :remote]


  validates_presence_of :title, :job_type, :description
  has_one_attached :hero_image
end
