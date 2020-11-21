################################################################################
# Model:  Company
#
# Purpose:
#
# Company attributes:
#   name              - name:           string,  not NULL, unique
#   title             - title:          string,  not NULL
#   email             - email:          string,  not NULL, unique
#   phone             - phone:          string,  not NULL
#   address           - address:        string,  not NULL
#   url               - url:            string,  not NULL
#   seo_title         - seo_title:      string,  not NULL
#   seo_description   - seo_description:  text,  default: ''
#   seo_keywords      - seo_keywords:     text,  default: ''
#
#  21.11.2020 ZT
################################################################################
class Company < ApplicationRecord
  validates :name,      presence: true, uniqueness: true
  validates :title,     presence: true
  validates :email,     presence: true, uniqueness: true
  validates :phone,     presence: true
  validates :address,   presence: true
  validates :url,       presence: true
  validates :seo_title, presence: true
end
