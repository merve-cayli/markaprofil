class Country < ActiveRecord::Base
  has_many :people
  has_many :companies
  has_many :brands
end
