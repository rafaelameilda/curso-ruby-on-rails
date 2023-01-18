class Coment < ApplicationRecord
  belongs_to :article
  belongs_to :user

  validades :body, presence: true
end
