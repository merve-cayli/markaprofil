class Relationship < ActiveRecord::Base
  belongs_to :people
  belongs_to :brand
  belongs_to :person_role
end
