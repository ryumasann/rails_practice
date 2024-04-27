class Tag < ApplicationRecord
  has_many :tag_article
  has_many :article, through: :tag_article
  # has_many :tag_article
end
