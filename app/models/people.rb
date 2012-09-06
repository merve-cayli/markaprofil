class People < ActiveRecord::Base
  belongs_to :country
  has_many :brands, :through => :relationships
  has_many :relationships
end
