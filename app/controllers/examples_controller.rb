class ExamplesController < ApplicationController

  before_filter :authenticate_user!

  def index
    @examples = Example.all
  end

  def new
    @example = Example.new
  end

  def create
    Example.create(params[:example])
    redirect_to :action => 'index'
  end

  def delete
    example = Example.find(params[:id])
    example.destroy
    redirect_to :action => 'index'
  end


end
