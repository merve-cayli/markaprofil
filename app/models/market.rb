class Market < ActiveRecord::Base
  belongs_to :country
  belongs_to :brand
end
