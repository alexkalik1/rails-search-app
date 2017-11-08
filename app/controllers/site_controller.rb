class SiteController < ApplicationController
  def search
    # @artists = ""
    # if params[:term]
    #   @artists = Artist.search(params[:term])
    # end
    artists = ""
    albums = ""
    labels = ""
    if params[:term]
      artists = Artist.search(params[:term])
      albums = Album.search(params[:term])
      labels = Label.search(params[:term])
    end
    @results = artists + albums + labels
  end
end
