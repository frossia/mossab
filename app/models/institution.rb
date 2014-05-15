class Institution < ActiveRecord::Base

  belongs_to :institution_category

  attr_accessible :name, :address, :tel, :email, :site, :institution_category_id

end
