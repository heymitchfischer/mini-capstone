class Image < ApplicationRecord
  belongs_to :dragon

  validates :url, presence: true
end
