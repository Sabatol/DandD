class WikiController < ApplicationController
  def weapons; end

  def skills; end

  def maps
    @maps = Map.all
  end
end
