################################################################################
# Model:  Category
#
# Purpose:
#
# Category attributes:
#   name            - name:           string,  not NULL, unique
#   title           - title:          string,  not NULL, unique
#   abstract        - abstract:       text,    not NULL
#   position        - sorting index:  integer, not NULL
#   status          - status:         enum { active (0) | archived (1) }
#   url             - url:            string,  not NULL, unique
#   seo_title       - seo_title:      string,  not NULL
#   seo_description - seo_description:  text
#   seo_keywords    - seo_keywords:     text
#
#  21.11.2020 ZT
################################################################################
class Category < ApplicationRecord
  include Positionable
  include ImageHandling

  has_many      :products
  has_rich_text :content
  
  enum status:  %w(active archived)

  validates :name,            presence: true, uniqueness: true
  validates :title,           presence: true, uniqueness: true
  validates :abstract,        presence: true
  validates :url,             presence: true, uniqueness: true
  validates :seo_title,       presence: true
  validates :seo_keywords,    presence: true
  validates :seo_description, presence: true
end