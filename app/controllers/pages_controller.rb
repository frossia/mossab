#encoding: utf-8

class PagesController < ApplicationController

	def index

  end

  def show
    @page = Page.find(params[:id])
  end

  def deputaty

  end


end
