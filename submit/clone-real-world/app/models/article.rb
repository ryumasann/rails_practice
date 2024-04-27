class Article < ApplicationRecord
  has_many :tag_article
  has_many :tag, through: :tag_article
end
