class DocumentationsController < ApplicationController
  def index; end

  def show
    @document = Documentation.find_by(id: params[:id])
  end

  def new
    @new_doc = Documentation.new
  end

  def create
    @new_doc = Documentation.create(title: params[:title], content: params[:content])
    if @new_doc.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit; end

  def update; end

  def destroy; end
end
