class SiteController < ApplicationController
  def search
    @artists = ""
    if params[:term]
      @artists = Artist.search(params[:term])
    end

  end
end
