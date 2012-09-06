class ForeignBrand < ActiveRecord::Base
  belongs_to :country
  has_and_belongs_to_many :brands
  has_and_belongs_to_many :tags
end
