class PagesController < ApplicationController

	def index
    @pages = Page.all
    @catigories = Category.all
	end

end
