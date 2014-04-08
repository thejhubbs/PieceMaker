class SiteController < ApplicationController
  def index
  end

  def page
    name = params[:name].split('-').collect { |x| x.titlecase }.join(' ')
    @page = Clientalk::Page.where(:name => name).first
  end
end
