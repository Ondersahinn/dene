class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :yazilar
  validates :icerik, presence: true, allow_blank: false
end
