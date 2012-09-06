class Brand < ActiveRecord::Base
  
  belongs_to :country
  
  has_many :milestones, :dependent => :destroy
  has_many :trivias, :dependent => :destroy
  
  has_many :possessions, :dependent => :destroy
  has_many :relationships, :dependent => :destroy
  has_many :associations, :dependent => :destroy
  has_many :markets, :dependent => :destroy
  
  has_many :assets, :through => :possessions
  has_many :people, :through => :relationships
  has_many :companies, :through => :associations
  has_many :countries, :through => :markets
  
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :foreign_brands
  has_and_belongs_to_many :products
  has_and_belongs_to_many :industries

  accepts_nested_attributes_for :possessions, :reject_if => lambda { |a| a [:number].blank? }
  accepts_nested_attributes_for :assets
  accepts_nested_attributes_for :relationships #, :reject_if => lambda { |a| a [:number].blank? }
  accepts_nested_attributes_for :people
  accepts_nested_attributes_for :associations #, :reject_if => lambda { |a| a [:number].blank? }
  accepts_nested_attributes_for :companies
  accepts_nested_attributes_for :countries
  
end
