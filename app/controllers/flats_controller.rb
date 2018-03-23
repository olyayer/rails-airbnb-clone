class FlatsController < ApplicationController
  before_action :load_flats


  def index
    load_flats
  end

  def show
    load_flats
    @flat = @flats[params[:id].to_i - 1]
  end

  private

  def load_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)

  end

end



