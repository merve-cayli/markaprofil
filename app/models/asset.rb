class Asset < ActiveRecord::Base
  has_many :possessions
  has_many :brands, :through => :possessions
end
