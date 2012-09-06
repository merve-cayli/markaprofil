class Possession < ActiveRecord::Base
  belongs_to :asset
  belongs_to :brand
end
