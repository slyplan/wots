class Toolset::ClimesController < ApplicationController

  layout 'toolset'

  def index
    @climes = Clime.all
  end

  def new
    @clime = Clime.new
  end

  def edit
    @clime = Clime.find(params[:id])
  end

  def create
    @clime = Clime.new(params[:clime])

    if @clime.save
      redirect_to toolset_climes_path, notice: 'Климат успешно добавлен'
    else
      render action: "new"
    end
  end

  def update
    @clime = Clime.find(params[:id])

    if @clime.update_attributes(params[:clime])
      redirect_to toolset_climes_path, notice: 'Климат обновлен'
    else
      render action: "edit"
    end
  end

  def destroy
    @clime = Clime.find(params[:id])
    @clime.destroy
    redirect_to toolset_climes_path
  end
end
