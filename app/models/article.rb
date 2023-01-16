class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 10 }

  paginates_per 2

  scope :desc_order, -> { order(created_at: :desc) }
  scope :without_highlights, ->(_ids) { where("id NOT IN(#{_ids})") }
end
