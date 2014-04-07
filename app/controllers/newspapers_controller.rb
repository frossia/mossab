class NewspapersController < ApplicationController

  layout 'fullpage'

  def index
    # @papers = Newspaper.find(:all, :limit => 4)
    @papers = Newspaper.all.order(:created_at).reverse_order
  end

end
