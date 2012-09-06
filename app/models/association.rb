class Association < ActiveRecord::Base
  belongs_to :brand
  belongs_to :company
  belongs_to :company_role
end
