class Company < ApplicationRecord
  belongs_to :user
  has_many :jobs
  has_one_attached :company_logo
  validates_presence_of :title, :description
end
