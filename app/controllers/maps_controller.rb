class MapsController < ApplicationController
  def new
    @new_map = Map.new
  end

  def create
    @new_map = Map.create(title: params[:title], content: params[:content])
    if @new_map.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @map = Map.find_by(id: params[:id])
  end
end
