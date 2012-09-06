class Company < ActiveRecord::Base
  belongs_to :country
  has_many :associations
  has_many :brands, :through => :associations
end
