class Island < ApplicationRecord
  has_many :buildings
  belongs_to :user
end
