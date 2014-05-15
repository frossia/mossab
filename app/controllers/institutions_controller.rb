class InstitutionsController < ApplicationController

  def index
    @institutions_category = InstitutionCategory.all
    @institutions = Institution.all
  end

end
