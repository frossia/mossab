class InstitutionCategory < ActiveRecord::Base

  has_many :institutions

  attr_accessible :name

end
